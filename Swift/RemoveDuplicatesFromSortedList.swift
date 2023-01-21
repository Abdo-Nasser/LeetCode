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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        let root = ListNode(-1000)
        root.next = head
        var next = head
        var current: ListNode? = root
        while current != nil  || current != nil {
            if (current?.val ?? -1000) == (next?.val ?? -1000) {
                current?.next = next?.next
                next = current?.next
            } else {
                current = current?.next
                next = current?.next
            }
        }
        return root.next
    }
}
