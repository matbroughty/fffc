package org.broughty.fffc.parser

import com.opencsv.bean.CsvToBeanBuilder
import org.broughty.fffc.parser.model.Killer
import org.slf4j.LoggerFactory
import java.io.*

class KillerFileCreator {

  fun createFile(dataFileName: String = "", inputStream: InputStream? = null, writeToFile: Boolean = true, htmlFileName: String, templateName: String): String {
    val logger = LoggerFactory.getLogger(javaClass)
    val csvToBeanBuilder: CsvToBeanBuilder<Killer> =
      if (inputStream != null) CsvToBeanBuilder(InputStreamReader(inputStream)) else {
        CsvToBeanBuilder(FileReader(dataFileName))
      }
    val rounds: List<Killer> = csvToBeanBuilder.withType(Killer::class.java)
      .withSkipLines(1).withIgnoreEmptyLine(true).build().parse()
    rounds.forEach { logger.info("Read in Killer Week {}", it) }
    val template = FreeMarkerUtils().getFreeMarker(templateName)
    val htmlStr = StringWriter()
    template.process(mapOf(Pair("rounds", rounds)), htmlStr)
    logger.debug("Killer html {}", htmlStr)
    val file = File(htmlFileName)
    if (writeToFile) {
      file.writeText(htmlStr.toString())
    }
    return htmlStr.toString()
  }


}
