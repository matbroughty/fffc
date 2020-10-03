package org.broughty.fffc.parser

import com.opencsv.bean.CsvToBeanBuilder
import org.broughty.fffc.parser.model.Killer
import org.slf4j.LoggerFactory
import java.io.*
import kotlin.reflect.full.declaredMemberProperties
import kotlin.reflect.full.memberProperties
import kotlin.streams.toList

class KillerFileCreator {

  fun createFile(dataFileName: String = "", inputStream: InputStream? = null, writeToFile: Boolean = true, htmlFileName: String, templateName: String): String {
    val logger = LoggerFactory.getLogger(javaClass)
    val csvToBeanBuilder: CsvToBeanBuilder<Killer> =
      if (inputStream != null) CsvToBeanBuilder(InputStreamReader(inputStream)) else {
        CsvToBeanBuilder(FileReader(dataFileName))
      }
    val fileRounds: List<Killer> = csvToBeanBuilder.withType(Killer::class.java)
      .withSkipLines(1).withIgnoreEmptyLine(true).build().parse()
    fileRounds.forEach { logger.info("Read in Killer Week {}", it) }

    // break file up into killer rounds via the '---' separator
    val rounds : ArrayList<List<Killer>> = ArrayList();
    var round : ArrayList<Killer> = ArrayList();
    fileRounds.forEach{
      if (it.mat.startsWith("---")){
        rounds.add(round);
        round = ArrayList()
      }else{
        round.add(it)
      }
    }
    rounds.add(round)

    logger.info("We have {} rounds", rounds.size)

    // List of players from field names - bit ugly...
    val players : List<String> = Killer::class.memberProperties.stream().map { it.name }.toList()

    val template = FreeMarkerUtils().getFreeMarker(templateName)
    val htmlStr = StringWriter()
    template.process(mapOf(Pair("allRounds", rounds), Pair("players", players)), htmlStr)
    logger.debug("Killer html {}", htmlStr)
    val file = File(htmlFileName)
    if (writeToFile) {
      file.writeText(htmlStr.toString())
    }
    return htmlStr.toString()
  }


}
