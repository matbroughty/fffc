package org.broughty.fffc.parser.model

import com.opencsv.bean.CsvBindByPosition

data class Killer(@CsvBindByPosition(position = 0) val mat: String = "",
             @CsvBindByPosition(position = 1) val jase: String = "",
             @CsvBindByPosition(position = 2) val pia: String = "",
             @CsvBindByPosition(position = 3) val callum: String = "",
             @CsvBindByPosition(position = 4) val jon: String = "",
             @CsvBindByPosition(position = 5) val frank: String = "",
             @CsvBindByPosition(position = 6) val dave: String = "",
             @CsvBindByPosition(position = 7) val tim: String = "",
             @CsvBindByPosition(position = 8) val jesus: String = ""
)
