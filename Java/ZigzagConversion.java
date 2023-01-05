class Solution {
    public String convert(String s, int numRows) {
        if(numRows <= 1)
            return s;
        
        ArrayList<String> res = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        for(int i=0;i<numRows;i++)
            res.add("");
        
        int row=0,step=1;
        for(char c : s.toCharArray()) {
            
            res.set(row,res.get(row)+c);
            
            if(row == 0)
                step=1;
            else if(row == numRows-1)
                step=-1;
            
            row+=step;
        }
        
        for(String str : res)
            sb.append(str);
        return sb.toString();
    }
}