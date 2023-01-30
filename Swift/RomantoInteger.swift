//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func romanToInt(_ s: String) -> Int {
    var roman = s
    let numbers = [1000,500,100,50,10,5,1]
    let romanChar = ["M","D","C","L","X","V","I"]
    var result = 0
    
    roman = roman.replacingOccurrences(of: "CM", with: "DCCCC")
    roman = roman.replacingOccurrences(of: "CD", with: "CCCC")
    roman = roman.replacingOccurrences(of: "XC", with: "LXXXX")
    roman = roman.replacingOccurrences(of: "XL", with: "XXXX")
    roman = roman.replacingOccurrences(of: "IX", with: "VIIII")
    roman = roman.replacingOccurrences(of: "IV", with: "IIII")

    let romanValue = Array(roman)
    for char in romanValue {
        for i in 0..<romanChar.count {
            if char == (romanChar[i].first ?? " ")  {
                result += numbers[i]
            }
        }
    }
    
    return result
    }
}
