/**
 * Question Link: https://leetcode.com/problems/excel-sheet-column-number/
 * Primary idea: Classic Math problem, res = res * 26 + current
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ExcelSheetColumnNumber {
    func titleToNumber(s: String) -> Int {
        var result = 0
        
        for c in s.unicodeScalars {
            let value = Int(c.value) - 64
            result = (result * 26)  + value
        }
        
        return result
    }
}
