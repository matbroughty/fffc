package org.broughty.fffc.parser.model

import com.opencsv.bean.CsvBindByPosition
import java.math.BigDecimal

data class FourFoldKent(@CsvBindByPosition(position = 0) val dan: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 1) val mat: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 2) val paulS: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 3) val paulV: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 4) val frank: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 5) val jase: BigDecimal = BigDecimal.ZERO,
                        @CsvBindByPosition(position = 6) val ash: BigDecimal = BigDecimal.ZERO
                        ) : FourFold{

  override fun add(ff: FourFold): FourFold {
    if(ff is FourFoldKent){
      return FourFoldKent(
        dan.plus(ff.dan) ,
        mat.plus(ff.mat),
        paulS.plus(ff.paulS) ,
        paulV.plus(ff.paulV),
        frank.plus(ff.frank),
        jase.plus(ff.jase),
        ash.plus(ff.ash))
    }
    return FourFoldKent()
  }

  fun countWins(ff: FourFold): FourFold {
    if(ff is FourFoldKent){
      return FourFoldKent(
        dan.plus(if (ff.dan > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO) ,
        mat.plus(if (ff.mat > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO),
        paulS.plus(if (ff.paulS > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO) ,
        paulV.plus(if (ff.paulV > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO),
        frank.plus(if (ff.frank > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO),
        jase.plus(if (ff.jase > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO),
        ash.plus(if (ff.ash > BigDecimal.ZERO) BigDecimal.ONE else BigDecimal.ZERO))
    }
    return FourFoldKent()

  }

  override fun roundWinnings(): List<Pair<String, BigDecimal>> {
    return listOf(
      Pair("mat", mat),
      Pair("dan", dan),
      Pair("paulS", paulS),
      Pair("paulV", paulV),
      Pair("frank", frank),
      Pair("jase", jase),
      Pair("ash", ash)).sortedBy { n -> n.second }.asReversed()
  }






}
