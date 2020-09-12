package org.broughty.fffc.parser

import com.opencsv.bean.CsvToBeanBuilder
import org.broughty.fffc.parser.model.FourFold
import org.slf4j.LoggerFactory
import java.io.*

class FourFoldFilesCreator{

  inline fun <reified T :FourFold> createFiles(dataFileName: String = "", inputStream: InputStream? = null, writeToFile: Boolean = true, htmlFileName: String, templateName : String): String {
    val logger = LoggerFactory.getLogger(javaClass)
    val csvToBeanBuilder: CsvToBeanBuilder<T> =
      if (inputStream != null) CsvToBeanBuilder(InputStreamReader(inputStream)) else {
        CsvToBeanBuilder(FileReader(dataFileName))
      }
    val rounds: List<T> = csvToBeanBuilder.withType(T::class.java)
      .withSkipLines(1).withIgnoreEmptyLine(true).build().parse()
    rounds.forEach { logger.info("Read in FF Week {}", it) }
    val template = FreeMarkerUtils().getFreeMarker(templateName)
    val totals = rounds.reduce{ acc, t -> t.add(acc) as T }
    logger.info("Total for FF $totals")
    totals.roundWinnings().forEach { logger.info("Ordered ${it.first} has ${it.second} ") }
    val input: Map<String, Any> = mapOf(Pair("totals", totals.roundWinnings()), Pair("rounds", rounds))
    val htmlStr = StringWriter()
    template.process(input, htmlStr)
    logger.debug("Four Fold html {}", htmlStr)
    val file = File(htmlFileName)
    if (writeToFile) {
      file.writeText(htmlStr.toString())
    }
    return htmlStr.toString()
  }


}
