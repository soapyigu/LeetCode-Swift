/**
 * Question Link: https://leetcode.com/problems/valid-palindrome-ii/
 * Primary idea: Two pointers. Move left and right when they are equal or cannot separate by moving either side, otherwise move one direction and update the flag.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ValidPalindromeII {
    func validPalindrome(_ s: String) -> Bool {
        var i = 0, j = s.count - 1, isDeleted = false
        let s = Array(s)

        while i < j {
            if s[i] != s[j] {
                if isDeleted {
                    return false
                } else {
                    if s[i + 1] == s [j] && s[j - 1] == s[i] {
                        i += 1
                        j -= 1
                    } else if s[i + 1] == s[j] {
                        i += 1
                        isDeleted = true
                    } else if s[j - 1] == s[i] {
                        j -= 1
                        isDeleted = true
                    } else {
                        return false
                    }
                }
            } else {
                i += 1
                j -= 1
            }
        }

        return true
    }
}
