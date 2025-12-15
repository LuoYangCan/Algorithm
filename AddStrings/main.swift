//
//  main.swift
//  AddStrings
//
//  Created by Keep on 2025/12/15.
//

import Foundation

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var i = num1.count - 1
        var j = num2.count - 1
        let a = Array(num1)
        let b = Array(num2)
        var output = [Int]()
        var carry = 0
        while i >= 0 || j >= 0 {
            let digital1 = i >= 0 ? Int(String(a[i]))! : 0
            let digital2 = j >= 0 ? Int(String(b[j]))! : 0
            let sum = digital1 + digital2 + carry
            let res = sum % 10
            output.append(res)
            carry = sum / 10
            i -= 1
            j -= 1
        }
        if carry > 0 {
            output.append(1)
        }
        output.reverse()
        return output.map({String($0)}).joined()
    }
}

let a = Solution()
a.addStrings("11", "123")
