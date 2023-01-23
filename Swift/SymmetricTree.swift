//
//  LeetCode
//  Created by Abdelrahman Nasser
//

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
          guard let root = root else {
            return true
        }
        
        return isMirror(root, root)
    }
    
    func isMirror(_ first: TreeNode?, _ second: TreeNode?) -> Bool {
         guard let firstVal = first?.val, let secondVal = second?.val else {
            return first == nil && second == nil
        }
        
        return (firstVal == secondVal) &&
        isMirror(first?.right, second?.left) &&
        isMirror(first?.left, second?.right)
    }
}
