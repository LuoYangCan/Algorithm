//
//  main.swift
//  LCR 186
//
//  Created by Keep on 2025/12/25.
//

import Foundation

func checkDynasty(_ places: [Int]) -> Bool {
    var dict = [Int: Bool]()
    var ma = 0
    var mi = 14
    for place in places {
        if place == 0 {
            continue
        }
        guard dict[place] == nil else {return false}
        ma = max(place, ma)
        
        mi = min(place, mi)
        dict[place] = true
    }
    if ma - mi < 5 {
        return true
    }
    return false
}

checkDynasty([0,6,9,0,7])
