package org.broughty.fffc.parser.model

import java.math.BigDecimal

interface FourFold{

  /**
   * Adds the FourFold totals to the ff passed in
   */
  fun add(ff : FourFold) : FourFold

  /**
   * Sums up the rounds winnings and returns as a list of Pairs with name and amount.  Highest first.
   */
  fun roundWinnings() : List<Pair<String, BigDecimal>>

}
