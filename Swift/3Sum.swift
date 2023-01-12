//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
    var resNums = [[Int]]()
        if nums.count < 3 {
            return resNums
        }
        
        let sortedNums = nums.sorted()
        
        for i in 0...sortedNums.count - 1 {
            if ((i > 0) && (sortedNums[i] == sortedNums[i - 1])) {
                continue
            }
            var left = i + 1
            var right = sortedNums.count - 1
            let first = sortedNums[i]
            while right > left {
                let second = sortedNums[left]
                let third = sortedNums[right]
                let sum = first + second + third
                if sum < 0 {
                    left += 1
                }
                else if sum > 0 {
                    right -= 1
                }
                else {
                    if ((left - 1 > i) && (sortedNums[left] == sortedNums[left - 1])) {
                        left += 1
                    }
                    else {
                        resNums.append([first,second,third])
                        left += 1
                    }
                }
            }
        }
        
        return resNums
    }
}
