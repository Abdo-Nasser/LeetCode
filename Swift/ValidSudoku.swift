//
//  LeetCode
//  Created by Abdelrahman Nasser
//

class Solution {
func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rowSet = Set<String>()
        var colSet = Set<String>()
        var boxSet = Set<String>()
        
        for row in 0..<9 {
            for col in 0..<9 {
                if board[row][col] != "." {

                    let rowStr = "\(board[row][col]) is at row \(row)"
                    let colStr = "\(board[row][col]) is at col \(col)"
                    let box = (row - row % 3 ) + col / 3
                    let boxStr = "\(board[row][col]) is at box \(box)"
                    
                    if rowSet.contains(rowStr) || colSet.contains(colStr) || boxSet.contains(boxStr) {
                        return false
                    } else {
                        rowSet.insert(rowStr)
                        colSet.insert(colStr)
                        boxSet.insert(boxStr)
                    }
                }
                
            }
        }
        return true
    }
}
