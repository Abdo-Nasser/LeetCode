//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public String longestCommonPrefix(String[] strs) {
       if (strs.length == 0)
            return "";
        Arrays.sort(strs);
        String word = strs[0];
        String prefix = "";
        
        for (int i = 0; i < word.length(); i ++) {
            prefix = word.substring(0, i+1);
            int len = prefix.length();
            
            for (int j = 1; j < strs.length; j ++) {
                
                if (strs[j].substring(0, len).equals(prefix)) {
                    continue;
                } else {
                    return prefix.substring(0, i);
                }
            }
        }
        
        return prefix; 
    }
}