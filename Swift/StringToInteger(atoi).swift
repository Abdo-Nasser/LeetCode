//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func myAtoi(_ s: String) -> Int {
        var result = 0
        var isNegative = false
        var isFirstSpaces = true
        var isSigned = false
        
        for value in s {
            if let integer = Int("\(value)") {
                if isNegative {
                    if ((result * 10) - integer) < Int32.min {
                        result = -2147483648
                        break
                    }else{
                        result = ((result * 10) - integer)
                    }
                }else {
                    if ((result * 10) + integer) > Int32.max {
                        result = 2147483647
                        break
                    }else{
                        result = ((result * 10) + integer)
                    }
                }
                isFirstSpaces = false
            }else if value == " ", isFirstSpaces {
                continue
            }else if ((value == "-") || (value == "+")), isFirstSpaces, !isSigned {
                isNegative = value == "-"
                isSigned = true
                isFirstSpaces = false
            }else {
                break
            }
        }
        
        return result
    }
}
