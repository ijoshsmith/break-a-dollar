//
//  functional.swift
//  DollarBreak
//
//  Created by Josh Smith on 11/29/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

class Functional {
    static func countWaysToBreakAmount(_ amount: Int, usingCoins coins: [Coin]) -> Int {
        let (coin, smallerCoins) = (coins[0], coins[1..<coins.count])
        if coin == Coin.penny {
            return 1
        }
        let coinCounts = [Int](0...amount/coin.rawValue)
        return coinCounts.reduce(0) { (sum, coinCount) in
            let remainingAmount = amount - (coin.rawValue * coinCount)
            return sum + self.countWaysToBreakAmount(remainingAmount, usingCoins: Array(smallerCoins))
        }
    }
}
