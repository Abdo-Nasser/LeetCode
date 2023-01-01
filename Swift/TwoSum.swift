//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
  
        for (index, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, index]
            }
    
            dict[num] = index
        }
        return [0]
    }
}
