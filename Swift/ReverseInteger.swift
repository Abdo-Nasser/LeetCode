//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func reverse(_ x: Int) -> Int {
        let valueString = "\(x)".reversed()
        var resultInString = ""
        for value in valueString {
            if value == "-" {
                resultInString = "-" + resultInString
            }else{
                resultInString += "\(value)"
            }
        }
        let result = Int(resultInString) ?? 0
        if result > Int32.max || result < Int32.min {
            return 0
        }
        return result
    }
}
