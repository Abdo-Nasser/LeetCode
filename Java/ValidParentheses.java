//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
    public boolean isValid(String s) {
        HashMap map = new HashMap();
        map.put('(',')');
        map.put('[',']');
        map.put('{','}');
        Stack<Character> stack = new Stack<>();

        for (int i = 0; i < s.length(); i++) {

            char a = s.charAt(i);
            
            if (a == '(' || a == '[' || a == '{') {
                stack.push(a);
            } else if (stack.isEmpty()) {
                return false;
            } else if (map.get(stack.pop()).equals(a)) {
                continue;
            } else return false;
        }
        return stack.isEmpty();
    }
}