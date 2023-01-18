//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = [Int]()
        var didAddOne = false
        var remainder = 0
        for i in (0..<digits.count).reversed() {
            let digit = digits[i]
            let value = digit + remainder + (didAddOne ? 0 : 1)
            remainder = 0
            didAddOne = true
            let newDigit = value % 10
            remainder = value / 10
            result.insert(newDigit, at: 0)
        }
        
        if remainder > 0 {
            result.insert(remainder, at: 0)
        }
        
        return result
    }
}
