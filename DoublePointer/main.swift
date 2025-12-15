//
//  main.swift
//  DoublePointer
//
//  Created by Keep on 2025/12/9.
//

import Foundation
func trainingPlan(_ actions: [Int]) -> [Int] {
    var i = 0
    var j = actions.count - 1
    var actions = actions
    while i < j {
        while i < j && actions[i] % 2 != 0 { i += 1 }
        while i < j && actions[j] % 2 == 0 { j -= 1 }
        actions.swapAt(i, j)
    }
    return actions
}
trainingPlan([1,2,3,4,5])
