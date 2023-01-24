//
//  LeetCode
//  Created by Abdelrahman Nasser
//

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        var temp = ListNode(0, head)
        var left: ListNode? = temp
        var right: ListNode? = head
        var n = n

        while n > 0 {
            right = right?.next
            n -= 1
        }

        while right != nil {
            left = left?.next
            right = right?.next
        }

        left?.next = left?.next?.next

        return temp.next
    }
}
