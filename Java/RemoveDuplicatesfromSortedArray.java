//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public int removeDuplicates(int[] nums) {
        if(nums.length == 0)
            return 0;
        
        int lastSortedIndex = 1; 

        for(int i = 0; i < nums.length - 1; i++) {
            
            if(nums[i] < nums[i + 1]) {
              nums[lastSortedIndex] = nums[i + 1];
              lastSortedIndex++;
            }
        }
        return lastSortedIndex;
    }
}