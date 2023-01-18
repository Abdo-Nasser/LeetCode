//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public int[] plusOne(int[] digits) {
        int result[];
        
        int digitLastIndex = digits.length - 1;
        int carry = (digits[digitLastIndex] + 1)/10;
        digits[digitLastIndex] = (digits[digitLastIndex] + 1)%10;
        
        int temp;
        
        for( int j = digitLastIndex-1; j>=0; j--) {
        	temp = digits[j];
        	digits[j] = (carry + digits[j])%10;
        	carry  = (carry + temp)/10;
        }
        if(carry == 1) {
        	result = new int[digits.length + 1];
            System.arraycopy(digits, 0, result, 1, digits.length);
        	result[0] = result[0] + carry;
        }else {
        	result = digits;
        }
        return result;
    }
}