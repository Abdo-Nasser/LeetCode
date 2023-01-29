//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public String intToRoman(int num) {
        int counter = num;
        int[] numbers = {1000,900,500,400,100,90,50,40,10,9,5,4,1};
        String[] romanChar = {"M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"};
        String result = "";
        
        for (int i = 0; i<romanChar.length; i++) {
            while(counter >= numbers[i]) {
                counter -= numbers[i];
                result += romanChar[i];
            }
        }
        return result;
    }
}