//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low: Int = 0
        var high: Int = nums.count - 1
        while low <= high {
            let mid: Int = low + (high - low)/2
            if target < nums[mid] {
                high = mid - 1
            } else if target > nums[mid] {
                low = mid + 1
            } else {
                return mid
            }
        }
        return low
    }
}
