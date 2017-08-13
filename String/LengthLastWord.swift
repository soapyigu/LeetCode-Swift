/**
 * Question Link: https://leetcode.com/problems/length-of-last-word/
 * Primary idea: Iterate the string in backward direction
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class LengthLastWord {
    func lengthOfLastWord(s: String) -> Int {
        var res = 0
        var sChars = [Character](s.characters)
        
        guard sChars.count != 0 else {
            return 0
        }
        
        for i in (0...sChars.count - 1).reverse() {
            if res == 0 {
                if sChars[i] == " " {
                    continue
                } else {
                    res += 1
                }
            } else {
                if sChars[i] == " " {
                    break
                } else {
                    res += 1
                }
            }
        }
        
        return res
    }
}