//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func isValid(_ s: String) -> Bool {
        let charMap: [Character:Character] = [
        "}": "{",
        ")": "(",
        "]": "["
        ]
        var openBrackets = [Character]()
         for char in s {
            let c = charMap[char]
            if c == nil {
                openBrackets.append(char)
            } else {
                if openBrackets.popLast() != c {
                    return false
                }
            }
        }
        return openBrackets.count == 0
    }
}
