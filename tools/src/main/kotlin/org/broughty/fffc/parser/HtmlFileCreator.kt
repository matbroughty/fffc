package org.broughty.fffc.parser

import java.io.InputStream

interface HtmlFileCreator {
  fun createFiles(fileName: String = "", inputStream: InputStream? = null, writeToFile: Boolean = true, htmlFileName :String = ""): Any
}
