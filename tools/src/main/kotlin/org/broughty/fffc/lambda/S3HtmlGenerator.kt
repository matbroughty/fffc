package org.broughty.fffc.lambda

import com.amazonaws.AmazonServiceException
import com.amazonaws.services.s3.AmazonS3Client
import com.amazonaws.services.s3.AmazonS3ClientBuilder
import com.amazonaws.services.s3.model.GetObjectRequest
import com.amazonaws.services.s3.model.ObjectMetadata
import org.broughty.fffc.parser.*
import org.broughty.fffc.parser.model.FourFoldKent
import java.io.InputStream
import java.time.LocalDateTime


class S3HtmlGenerator {

  fun generate(bucketName: String = "fourfold.co.uk",
               kentFourFoldData: String = "data/kent.csv",
               premKillerData: String = "data/killer.csv"
  ): String {
    print("bucket = $bucketName and file = $kentFourFoldData")
    val s3Client = AmazonS3ClientBuilder.defaultClient() as AmazonS3Client

    println("Getting $kentFourFoldData from bucket $bucketName")
    val s3ObjectKent = s3Client.getObject(GetObjectRequest(bucketName, kentFourFoldData))
    println("Object for $kentFourFoldData from bucket $bucketName is $s3ObjectKent")
    val kentFourFoldDataStream: InputStream = s3ObjectKent.objectContent


    println("Getting $premKillerData from bucket $bucketName")
    val s3ObjectKiller = s3Client.getObject(GetObjectRequest(bucketName, premKillerData))
    println("Object for $premKillerData from bucket $bucketName is $s3ObjectKiller")
    val hpdKillerDataStream: InputStream = s3ObjectKiller.objectContent


    val kentHtml = FourFoldFilesCreator().createFiles<FourFoldKent>(inputStream = kentFourFoldDataStream, dataFileName = "data/kent.csv", htmlFileName = "index.html", templateName = FOUR_FOLD_KENT_FTL, writeToFile = false)
    val hpdKillerHtml = KillerFileCreator().createFile(inputStream = hpdKillerDataStream, dataFileName = "data/killer.csv", htmlFileName = "killer.html", templateName = KILLER_HPD_FTL, writeToFile = false)


    val kentFourFoldMsg = createHtmlFile(kentHtml, bucketName, s3Client, kentFourFoldData, "index.html")
    val killerMsg = createHtmlFile(hpdKillerHtml, bucketName, s3Client, premKillerData, "killer.html")


    return "Ok: kentFourFold **** $kentFourFoldMsg hpdKiller **** + $killerMsg : Generated time is :${LocalDateTime.now()} "
  }


  private fun createHtmlFile(fileContents: String, bucketName: String,
                             s3Client: AmazonS3Client, dataFile: String, htmlFileName: String): String {
    println("Writing to: $bucketName with html $fileContents")
    var msg = "S3 S3HtmlGenerator"
    val metadata = ObjectMetadata()
    metadata.contentType = "text/html"
    try {
      s3Client.putObject(bucketName, htmlFileName, fileContents.byteInputStream(), metadata)
    } catch (e: AmazonServiceException) {
      System.err.println("We have an error writing $dataFile to $bucketName with html $fileContents error is:  ${e.errorMessage}")
      return msg.plus(" FAILED to update $bucketName using $dataFile and uploaded to $bucketName with object $htmlFileName}")
    }
    msg = msg.plus("- Successfully updated $bucketName using $dataFile and uploaded to $bucketName with object $htmlFileName}")
    println(msg)
    return msg
  }

}


