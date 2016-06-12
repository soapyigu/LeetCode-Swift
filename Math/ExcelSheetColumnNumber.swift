/**
 * Question Link: https://leetcode.com/problems/excel-sheet-column-number/
 * Primary idea: Classic Math problem, res = res * 26 + current
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ExcelSheetColumnNumber {
    func titleToNumber(s: String) -> Int {
        var res = 0
        let scalarsOfA = "A".unicodeScalars
        
        for char in s.characters {
            let scalars = String(char).unicodeScalars
            let current = Int(scalars[scalars.startIndex].value - scalarsOfA[scalarsOfA.startIndex].value) + 1
            res = res * 26 + current
        }
        
        return res
    }
}