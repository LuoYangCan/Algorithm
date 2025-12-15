//
//  main.swift
//  MergeSort
//
//  Created by Keep on 2025/12/10.
//

import Foundation
class Solution {
    var num = 0
    
    func mergeSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else {return array}
        let middle = array.count / 2
        
        let leftArray = mergeSort(Array(array[0..<middle]))
        let rightArray = mergeSort(Array(array[middle..<array.count]))
        
        return merge(left: leftArray, right: rightArray)
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        var mergedArray = [Int]()
        mergedArray.reserveCapacity(left.count + right.count)
        var i = 0
        var j = 0
        while i < left.count && j < right.count {
            let l = left[i]
            let r = right[j]
            if l >= r {
                mergedArray.append(r)
                j += 1
                // 左侧最小值大于右侧，则左侧剩余值都大于右侧
                num += left.count - i
            } else {
                mergedArray.append(l)
                i += 1
            }
        }
        if i < left.count {
            mergedArray.append(contentsOf: left[i...])
        }
        if j < right.count {
            mergedArray.append(contentsOf: right[j...])
        }
        return mergedArray
    }
}

let s = Solution()
print(s.mergeSort([9, 7, 5, 4, 6]))

//class Solution {
//    var record: [Int] = []
//    func reversePairs(_ record: [Int]) -> Int {
//        self.record = record
//        return mergeSort(l: 0, r: record.count - 1)
//    }
//    
//    func mergeSort(l: Int, r: Int) -> Int {
//        guard l < r else {return 0}
//        let middle = (l + r) / 2
//        
//        var num = mergeSort(l: l, r: middle) + mergeSort(l: middle + 1, r: r)
//        var i = l
//        var j = middle + 1
//        let mergedArray = record
//        for (idx, _) in record[l...r].enumerated() {
//
//            if i == middle + 1 {
//                // 剩下的都是右侧的
//                record[idx + l] = mergedArray[j]
//                j += 1
//            } else if j == r + 1 {
//                record[idx + l] = mergedArray[i]
//                i += 1
//            } else {
//                let ld = mergedArray[i]
//                let rd = mergedArray[j]
//                if ld > rd {
//                    num += middle - i + 1
//                    j += 1
//                    record[idx + l] = rd
//                } else {
//                    i += 1
//                    record[idx + l] = ld
//                }
//            }
//        }
//        return num
//    }
//}
//
//let s = Solution()
//print(s.reversePairs([7,5,6,4]))
//print(s.reversePairs([9, 7, 5, 4, 6]))
