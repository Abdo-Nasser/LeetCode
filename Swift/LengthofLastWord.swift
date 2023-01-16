//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var counter = 0
        var newWord = true

        for char in s {
            if char == " " {
                newWord = true
            }else if char != " " && newWord {
                counter = 1
                newWord = false
            }else {
                counter += 1
            }
        }

        return counter
    }
}
