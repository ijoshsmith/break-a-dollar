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
    case silverDollar = 100
    case halfDollar = 50
    case quarter = 25
    case dime = 10
    case nickel = 5
    case penny = 1
    
    static func coinsInDescendingOrder() -> [Coin]
    {
        return [
            Coin.silverDollar,
            Coin.halfDollar,
            Coin.quarter,
            Coin.dime,
            Coin.nickel,
            Coin.penny
        ]
    }
}
