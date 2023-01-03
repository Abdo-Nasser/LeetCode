//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var currentIndex = 0
        var charArray = [Character]()
        var maxCount = 0

        for ch in s {
            charArray.append(ch)
        }

        for i in 0..<charArray.count {
            var counter = 0
            var charDic = [Character: Int]()
            for j in i..<charArray.count {
                if charDic[charArray[j]] == nil {
                    counter += 1
                    charDic[charArray[j]] = 1
                }else {
                  break
                }
            }
            maxCount = counter > maxCount ? counter : maxCount
        }
        return maxCount
    }
}
