package org.broughty.fffc.parser.model

import com.opencsv.bean.CsvBindByPosition
import java.math.BigDecimal

data class FourFoldKent(@CsvBindByPosition(position = 0) val dan: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 1) val mat: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 2) val paulS: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 3) val paulV: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 4) val taz: BigDecimal = BigDecimal.ZERO
                        ) : FourFold{

  override fun add(ff: FourFold): FourFold {
    if(ff is FourFoldKent){
      return FourFoldKent(dan.plus(ff.dan) , mat.plus(ff.mat), paulS.plus(ff.paulS) , paulV.plus(ff.paulV), taz.plus(ff.taz))
    }
    return FourFoldKent()
  }


  override fun roundWinnings(): List<Pair<String, BigDecimal>> {
    return listOf(Pair("mat", mat), Pair("dan", dan), Pair("paulS", paulS), Pair("paulV", paulV), Pair("taz", taz)).sortedBy { n -> n.second }.asReversed()
  }

}
