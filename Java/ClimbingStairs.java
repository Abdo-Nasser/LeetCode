//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public int climbStairs(int n) {
        int[] numOfWays = new int[n + 1];
        
        numOfWays[0] = 0;
        numOfWays[1] = 1;
        numOfWays[2] = 2;

        if (n < 3) { return numOfWays[n]; }
        
        for (int i = 3; i<=n ; i++) {
            numOfWays[i] = (numOfWays[i - 1] + numOfWays[i - 2]);
        }
        return numOfWays[n];
    }
}