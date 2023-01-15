//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var newNums: [Int] = []
        for index in 0..<nums.count {
            if nums[index] != val {
                newNums.append(nums[index])
            }
        }

        for index in 0..<newNums.count {
            nums[index] = newNums[index]
        }

        return newNums.count
    }
}
