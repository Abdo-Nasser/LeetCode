//
//  LeetCode
//  Created by Abdelrahman Nasser
//
class Solution {

    func convert(_ s: String, _ numRows: Int) -> String {
    if numRows == 1 {
        return s
    }
        var col = -1
        var row = 0
        var arr = [[Character]](repeating: [Character](repeatElement(Character("!"), count: s.count)), count: numRows)
        var currentIndex = 0
        let currentString = Array(s)
        var toUpDirection = false
        var result = ""

        while (currentIndex < s.count) {
            if (row % (numRows - 1) == 0) && (col != numRows - 1) {
                col += 1
                toUpDirection = (col == numRows - 1)
            }else {
                if (toUpDirection ) {
                    col -= 1
                    row += 1
                } else {
                    col += 1
                }
            }
            arr[col][row] = currentString[currentIndex]
            currentIndex += 1
        }

        for i in 0..<numRows {
            for j in 0..<arr[i].count {
                if arr[i][j] != "!" {
                    result.append(arr[i][j])
                }
            }
        }
        return result
    }
}
