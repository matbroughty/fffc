package org.broughty.fffc.parser.model

import com.opencsv.bean.CsvBindByPosition

data class Killer(@CsvBindByPosition(position = 0) val mat: String = "",
                  @CsvBindByPosition(position = 1) val jase: String = "",
                  @CsvBindByPosition(position = 2) val pia: String = "",
                  @CsvBindByPosition(position = 3) val jon: String = "",
                  @CsvBindByPosition(position = 4) val frank: String = "",
                  @CsvBindByPosition(position = 5) val tim: String = "",
                  @CsvBindByPosition(position = 6) val todd: String = "",
                  @CsvBindByPosition(position = 7) val george: String = "",
                  @CsvBindByPosition(position = 8) val erik: String = ""
)
