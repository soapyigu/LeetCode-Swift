/**
 * Question Link: https://leetcode.com/problems/valid-palindrome-ii/
 * Primary idea: Take advantage of validPalindrome, and jump left and right separately to get correct character should be deleted
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ValidPalindromeII {
    func validPalindrome(_ s: String) -> Bool {
        let s = Array(s)
        return isValid(true, s) || isValid(false, s)
    }
    
    private func isValid(_ skipLeft: Bool, _ s: [Character]) -> Bool {
        var i = 0, j = s.count - 1, alreadySkipped = false
        
        while i < j {
            if s[i] == s[j] {
                i += 1
                j -= 1
            } else {
                if alreadySkipped {
                    return false
                } else {
                    alreadySkipped = true
                    if skipLeft {
                        i += 1 
                    } else {
                        j -= 1
                    }
                }
            }
        }
        
        return true
    }
}
