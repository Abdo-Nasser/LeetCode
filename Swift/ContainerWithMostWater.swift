//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var max = 0
        var left = 0
        var right = height.count - 1

        while (left < right) {
            if height[left] > height[right] {
                let currentValue = height[right] * ( right - left )
                max = (currentValue > max) ? currentValue : max
                right -= 1
            }else {
                let currentValue = height[left] * ( right - left )
                max = (currentValue > max) ? currentValue : max
                left += 1
            }
        }

        return max
    }
}
