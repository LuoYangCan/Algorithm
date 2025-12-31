//
//  main.swift
//  LCR 122
//
//  Created by Keep on 2025/12/26.
//

import Foundation

func pathEncryption(_ path: String) -> String {
    var result = [String]()
    path.forEach {
        let s = String($0)
        if s == "." {
            result.append(" ")
        } else {
            result.append(s)
        }
    }
    print(result.joined())
    return result.joined()
}

pathEncryption("a.aef.qerf.bb")
