//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public int threeSumClosest(int[] nums, int target) {
        int[] sortedNums = nums;
        Arrays.sort(sortedNums);
        int result = nums[0] + nums[1] + nums[2];
        int diff = Math.abs(result - target);

    for (int i = 0; i<sortedNums.length; i++) {
        int start = i + 1;
        int end = sortedNums.length - 1;
        
        while (start < end) {
            int sum = sortedNums[i] + sortedNums[start] + sortedNums[end];
            if (sum == target) {
                return target;
            }
            int newDiff = Math.abs(sum - target);
            if (newDiff < diff) {
                diff = newDiff;
                result = sum;
            }
            if (sum > target) {
                end = end - 1;
            } else {
                start = start + 1;
            }
        }
    }
    
    return result;
    }
}