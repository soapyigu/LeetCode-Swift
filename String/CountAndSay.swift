/**
 * Question Link: https://leetcode.com/problems/count-and-say/
 * Primary idea: Recursion to get previous string, then iterate and generate current one.
 * 
 * Time Complexity: O(n^2), Space Complexity: O(1)
 *
 */

class CountAndSay {
    func countAndSay(_ n: Int) -> String {
        if n == 1 {
            return "1"
        }
        
        let previousStr = countAndSay(n - 1)
        var currentChar = previousStr.first!, currentCount = 0, res = ""
        
        for (i, char) in previousStr.enumerated() { 
            if char == currentChar {
                currentCount += 1  
            } else {
                res += "\(currentCount)\(currentChar)"
                
                currentCount = 1
                currentChar = char
            }
        }
        
        res += "\(currentCount)\(currentChar)"
        
        return res
    }
}
