package org.broughty.fffc.shell

import org.broughty.fffc.parser.*
import org.broughty.fffc.parser.model.FourFoldHpd
import org.broughty.fffc.parser.model.FourFoldKent
import org.springframework.shell.standard.ShellComponent
import org.springframework.shell.standard.ShellMethod


/**
 * Calls the 'replay' and then 'allhtml' commands.
 * <br>
 */
@ShellComponent
class GenerateCommand {

  @ShellMethod("Generates the fourfold.co.uk site calling the command 'gen' ")
  fun generate(): String {
    var allHtml = FourFoldFilesCreator().createFiles<FourFoldHpd>(dataFileName = "data/hpd.csv", htmlFileName = "hpd.html", templateName = FOUR_FOLD_HPD_FTL)
    allHtml = allHtml.plus(FourFoldFilesCreator().createFiles<FourFoldKent>(dataFileName = "data/kent.csv", htmlFileName = "index.html", templateName = FOUR_FOLD_KENT_FTL))
    allHtml = allHtml.plus(KillerFileCreator().createFile(dataFileName = "data/killer.csv", htmlFileName = "killer.html", templateName = KILLER_HPD_FTL))
    return "gen: allHtml length ${allHtml.length}"
  }



}
