//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    func climbStairs(_ n: Int) -> Int {
        var numOfWays = [0,1,2]
        if n < 3 { return numOfWays[n] }
        
        for i in 3...n {
            numOfWays.append(numOfWays[i - 1] + numOfWays[i - 2])
        }
        return numOfWays[n]
    }
}
