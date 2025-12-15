//
//  main.swift
//  PostorderTraversal
//
//  Created by Keep on 2025/12/15.
//

import Foundation
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

// 后序遍历
class Solution {
    var res = [Int]()
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
//        dfs(root)
//        return res
        
        guard let root else { return [] }
        var res: [Int] = []
        var stack: [TreeNode] = []
        var current = root
        

        while let cur = stack.popLast() {
            res.append(cur.val)          // 根
            if let l = cur.left { stack.append(l) }   // 先左入栈
            if let r = cur.right { stack.append(r) }  // 再右入栈 -> 出栈顺序会更偏向“根-右-左”
        }
        res.reverse()
        return res
    }
    
    func dfs(_ root: TreeNode?) {
        guard let root = root else {return}
        inorderTraversal(root.left)
        inorderTraversal(root.right)
        res.append(root.val)
    }
}


