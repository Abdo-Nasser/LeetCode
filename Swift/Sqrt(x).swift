//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x <= 1 {
            return x
        }
        var left = 1
        var right = x
        while(left < right) {
            var mid: Int = left + (right - left) / 2;
            if(mid <= x / mid) {
                left = mid + 1
            } else {
                right = mid
            }
        }
        return (left - 1)
    }
}
