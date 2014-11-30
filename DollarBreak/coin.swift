//
//  coin.swift
//  DollarBreak
//
//  Created by Josh Smith on 11/29/14.
//  Copyright (c) 2014 iJoshSmith. All rights reserved.
//

import Foundation

enum Coin: Int
{
    case SilverDollar = 100
    case HalfDollar = 50
    case Quarter = 25
    case Dime = 10
    case Nickel = 5
    case Penny = 1
    
    static func coinsInDescendingOrder() -> [Coin]
    {
        return [
            Coin.SilverDollar,
            Coin.HalfDollar,
            Coin.Quarter,
            Coin.Dime,
            Coin.Nickel,
            Coin.Penny
        ]
    }
}
