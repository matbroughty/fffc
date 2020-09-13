package org.broughty.fffc.parser

import org.broughty.fffc.parser.model.FourFold
import java.io.InputStream

interface HtmlFileCreator {
  fun <T : FourFold> createFiles(dataFileName: String = "", inputStream: InputStream? = null, writeToFile: Boolean = true, htmlFileName: String, templateName : String): String
  }
