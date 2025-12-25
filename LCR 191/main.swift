//
//  main.swift
//  LCR 191
//
//  Created by Keep on 2025/12/25.
//

import Foundation

func statisticalResult(_ arrayA: [Int]) -> [Int] {
    guard arrayA.count > 1 else {
        return arrayA
    }
    var arrayB = [Int](repeating: 0, count: arrayA.count)
    arrayB[0] = 1
    let lastIndex = arrayA.count - 1
    var tmp = 1
    for i in stride(from: 1, through: lastIndex, by: 1) {
        arrayB[i] = arrayB[i - 1] * arrayA[i - 1]
    }
    

    for i in stride(from: lastIndex - 1, through: 0, by: -1) {
        tmp *= arrayA[i + 1]
        arrayB[i] *= tmp
    }
    print(arrayB)
    return arrayB
}


statisticalResult([2,4,6,8,10])
