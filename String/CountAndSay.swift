/**
 * Question Link: https://leetcode.com/problems/count-and-say/
 * Primary idea: Recursive iteration, use outer iteration to count times, 
 *               use inner iteration to get the right string for specific index
 * 
 * Note: Swift does not have a way to access a character in a string with O(1), 
 *       thus we have to first transfer the string to a character array
 * Time Complexity: O(n^2), Space Complexity: O(n)
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
