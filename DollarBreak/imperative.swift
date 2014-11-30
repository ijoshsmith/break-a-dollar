//
//  imperative.swift
//  DollarBreak
//
//  Created by Josh Smith on 11/29/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

class Imperative
{
    class func countWaysToBreakAmount(amount: Int, usingCoins coins: [Coin]) -> Int
    {
        let coin = coins[0]
        if (coin == .Penny) {
            return 1
        }
        
        var smallerCoins = [Coin]()
        for index in 1..<coins.count {
            smallerCoins.append(coins[index])
        }
        
        var sum = 0
        for coinCount in 0...(amount / coin.rawValue) {
            let remainingAmount = amount - (coin.rawValue * coinCount)
            sum += countWaysToBreakAmount(remainingAmount, usingCoins: smallerCoins)
        }
        return sum
    }
}
