//
//  main.swift
//  quickSort
//
//  Created by Keep on 2025/12/9.
//

import Foundation

func inventoryManagement(_ stock: [Int], _ cnt: Int) -> [Int] {
    
    func quickSort(_ stock: [Int], _ cnt: Int, _ l: Int, _ r: Int) -> [Int] {
        var i = l
        var j = r
        var stock = stock
        while i < j {
            while i < j && stock[j] >= stock[l] {j -= 1}
            while i < j && stock[i] <= stock[l] {i += 1}
            stock.swapAt(i, j)
        }
        stock.swapAt(j, l)
        if i > cnt {
            return quickSort(stock, cnt, l, i - 1)
        }
        if i < cnt {
            return quickSort(stock, cnt, i + 1, r)
        }
        return Array(stock[...cnt])
    }
    guard cnt < stock.count else {return stock}
    guard cnt > 0 else {return []}
    return quickSort(stock, cnt - 1, 0, stock.count - 1)
}
