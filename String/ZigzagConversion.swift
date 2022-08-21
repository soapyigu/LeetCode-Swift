/**
 * Question Link: https://leetcode.com/problems/zigzag-conversion/
 *
 * Primary idea: The first and the last row, loop length is (2 * numRows - 2)
 *               For each row between them, should insert another number, index = index + 2 * (numRows - i - 1)
 *
 * Time Complexity: O(log(n + m)), Space Complexity: O(1)
 *
 */
 
class ZigzagConversion {
    func convert(s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        
        var ret: [Character] = []
        var chars: [Character] = [Character](s.characters)
        let cnt = chars.count
        
        
        for i in 0..<numRows {
            let len = 2 * numRows - 2
            var index = i
            while index < cnt {
                ret.append(chars[index])
                
                if i != 0 && i != numRows - 1 {
                    let tmpIndex = index + 2 * (numRows - i - 1)
                    if tmpIndex < cnt {
                        ret.append(chars[tmpIndex])
                    }
                }
                
                index += len
            }
        }
        
        return String(ret)
    }
}