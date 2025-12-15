//
//  main.swift
//  Boyer–MooreMajorityVote
//
//  Created by Keep on 2025/12/9.
//

import Foundation
func mooreVote(_ stock: [Int]) -> Int {
    var votes = 0
    var x = 0
    stock.forEach({
        if votes == 0 {x = $0}
        if x == $0 {
            votes += 1
        } else {
            votes -= 1
        }
    })
    print(x)
    return x
}

mooreVote([6, 1, 3, 1, 1, 1])

