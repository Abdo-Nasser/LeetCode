//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func letterCombinations(_ digits: String) -> [String] {

        if digits.isEmpty {
            return []
        }

       let lettersDic = [
           2: "abc",
           3: "def",
           4: "ghi",
           5: "jkl",
           6: "mno",
           7: "pqrs",
           8: "tuv",
           9: "wxyz"
        ]

        let digitsArray = Array(digits)
        var result = [String]()
        
        for i in 0..<digitsArray.count {
            let currentNum = Int("\(digitsArray[i])" ?? "0") ?? 0
            let currentLetters = (lettersDic[currentNum] ?? "").map { String($0) }
            if result.count == 0 {
                result = currentLetters
                continue
            }
            var tempResult = [String]()

            for letter in currentLetters {
                for existLettes in result {
                    tempResult.append("\(existLettes)\(letter)")
                }
            }

            result = tempResult
        }
        return result
    }
}
