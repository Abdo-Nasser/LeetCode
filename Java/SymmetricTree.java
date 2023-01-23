/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public boolean isSymmetric(TreeNode root) {
  if (root==null ||root.left == null && root.right == null) return true;
        TreeNode left = root.left;
        TreeNode right = root.right;
        return isMirror(left, right);
    }
    public boolean isMirror(TreeNode l, TreeNode r) {
        if (l == null && r == null) return true;
        else if (l==null || r==null) return false;
        else if (l.val != r.val) return false;
        return isMirror(l.left, r.right) && isMirror(l.right, r.left);
    }
}