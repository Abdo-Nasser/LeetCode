//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var isPalindrome = true
        let valueArrayOfString = Array("\(x)")
        let midCount = (valueArrayOfString.count+1)/2
    
        for i in 0..<(midCount) {
            let j = valueArrayOfString.count - 1 - i
            if valueArrayOfString[i] != valueArrayOfString[j] {
                isPalindrome = false
                break
            }
        }
        return isPalindrome
    }
}
