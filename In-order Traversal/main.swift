//
//  main.swift
//  In-order Traversal
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

class Solution {
    var res = [Int]()
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
//        dfs(root)
//        return res
        var current = root
        var stack = [TreeNode]()
        var res = [Int]()
        
        while current != nil || stack.isEmpty == false {
            while let node = current {
                stack.append(node)
                current = node.left
            }
            
            if let node = stack.popLast() {
                res.append(node.val)
                current = node.right
            }
        }
        return res
    }
    
    func dfs(_ root: TreeNode?) {
        guard let root = root else {return}
        inorderTraversal(root.left)
        res.append(root.val)
        inorderTraversal(root.right)
    }
}
