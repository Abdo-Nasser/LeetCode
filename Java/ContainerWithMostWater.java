//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public int maxArea(int[] height) {
        int max = 0;
        int left = 0;
        int right = height.length - 1;

        while (left < right) {
            if (height[left] > height[right]) {
                int currentValue = height[right] * ( right - left );
                max = (currentValue > max) ? currentValue : max;
                right -= 1;
            }else {
                int currentValue = height[left] * ( right - left );
                max = (currentValue > max) ? currentValue : max;
                left += 1;
            }
        }

        return max;
    }
}