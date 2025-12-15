//
//  main.swift
//  UglyNumber
//
//  Created by Keep on 2025/12/10.
//

import Foundation

func nthUglyNumber(_ n: Int) -> Int {
    var a = 0
    var b = 0
    var c = 0
    var res = [Int](repeating: 0, count: n)
    res[0] = 1
    for i in 1..<n {
        let n2 = res[a] * 2
        let n3 = res[b] * 3
        let n5 = res[c] * 5
        res[i] = min(n2, n3, n5)
        if res[i] == n2 {
            a += 1
        }
        
        if res[i] == n3 {
            b += 1
        }
        
        if res[i] == n5 {
            c += 1
        }
    }
    return res.last ?? 1
}

nthUglyNumber(10)
