//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var count = 1
        var currentValue = nums.first ?? 0
        var lastSortedIndex = 1
        for (index, value) in nums.enumerated() {
            if currentValue < value {
                currentValue = value
                nums[lastSortedIndex] = value
                lastSortedIndex+=1
                count += 1
            }
        }
        return count
    }
}
