//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func intToRoman(_ num: Int) -> String {
    var counter = num
    let numbers = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
    let romanChar = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    var result = ""
    
    for i in 0..<romanChar.count {
        while(counter >= numbers[i]) {
            counter -= numbers[i]
            result.append(romanChar[i])
        }
    }
    
    return result
    }
}
