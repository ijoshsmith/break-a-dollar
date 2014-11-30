//
//  main.swift
//  DollarBreak
//
//  Created by Josh Smith on 11/29/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

let oneDollar = 100
let allCoins = Coin.coinsInDescendingOrder()

let count1 = Imperative.countWaysToBreakAmount(oneDollar, usingCoins: allCoins)
println("(Imperative) There are \(count1) ways to break a dollar.")

let count2 = Functional.countWaysToBreakAmount(oneDollar, usingCoins: Slice<Coin>(allCoins))
println("(Functional) There are \(count2) ways to break a dollar.")
