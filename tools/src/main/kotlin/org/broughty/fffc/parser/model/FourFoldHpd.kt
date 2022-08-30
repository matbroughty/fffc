package org.broughty.fffc.parser.model

import com.opencsv.bean.CsvBindByPosition
import java.math.BigDecimal


data class FourFoldHpd(@CsvBindByPosition(position = 0) val mat: BigDecimal = BigDecimal.ZERO,
                       @CsvBindByPosition(position = 1) val jase: BigDecimal = BigDecimal.ZERO,
                       @CsvBindByPosition(position = 2) val frank: BigDecimal = BigDecimal.ZERO,
                       @CsvBindByPosition(position = 3) val gez: BigDecimal = BigDecimal.ZERO) : FourFold{




  override fun add(ff: FourFold): FourFold {
    if(ff is FourFoldHpd){
      return FourFoldHpd(mat.plus(ff.mat) , jase.plus(ff.jase), frank.plus(ff.frank) , gez.plus(ff.gez))
    }
    return FourFoldHpd()
  }


  override fun roundWinnings(): List<Pair<String, BigDecimal>> {
    return listOf(Pair("mat", mat), Pair("jase", jase), Pair("frank", frank), Pair("gez", gez)).sortedBy { n -> n.second }.asReversed()
  }

  override fun countWinners(): Int {
    TODO("Not yet implemented")
  }
}
