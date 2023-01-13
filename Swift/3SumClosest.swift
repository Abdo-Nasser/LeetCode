//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let sortedNums = nums.sorted()
        var result = nums[0] + nums[1] + nums[2]
        var diff = abs(result - target)
        
        for (index, num) in sortedNums.enumerated() {
            var start = index + 1
            var end = sortedNums.count - 1
            
            while start < end {
                var sum = num + sortedNums[start] + sortedNums[end]
                guard sum != target else {
                    return target
                }
                let newDiff = abs(sum - target)
                if newDiff < diff {
                    diff = newDiff
                    result = sum
                }
                if sum > target {
                    end -= 1
                } else {
                    start += 1
                }
            }
        }
        
        return result
    }
}
