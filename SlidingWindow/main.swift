//
//  main.swift
//  SlidingWindow
//
//  Created by Keep on 2025/12/16.
//

import Foundation
func fileCombination(_ target: Int) -> [[Int]] {
       var i = 1
       var j = 2
       var sum = 3
       var res = [[Int]]()
       while i < j {
           if sum == target {
               res.append(Array(i...j))
               sum -= i
               i += 1
           } else if sum > target {
               sum -= i
               i += 1
           } else {
               j += 1
               sum += j
           }
       }
       return res
   }
