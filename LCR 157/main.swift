//
//  main.swift
//  LCR 157
//
//  Created by Keep on 2025/12/31.
//

import Foundation

class Solution {
    var res = [String]()
    var arr = [String]()
    func goodsOrder(_ goods: String) -> [String] {
        arr = goods.map { String($0)}
        dfs(0)
        print(res)
        return res
    }

    func dfs(_ x: Int) {
        if x == arr.count - 1 {
            res.append(arr.joined())
            return
        }

        var s = Set<String>()
        for i in x..<arr.count {
            if s.contains(arr[i]) {
                continue
            }
            s.insert(arr[i])
            arr.swapAt(x, i)
            dfs(x + 1)
            arr.swapAt(i, x)
        }
    }
}


let s = Solution()
s.goodsOrder("agew")
