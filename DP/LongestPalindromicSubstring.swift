/**
 * Question Link: https://leetcode.com/problems/longest-palindromic-substring/
 * Primary idea: 2D Dynamic Programming, update boolean array based on
 *               current two characters' equity and the previous boolean subarray
 * Time Complexity: O(n^2), Space Complexity: O(n^2)
 *
 */

class LongestPalindromicSubstring {
    func longestPalindrome(_ s: String) -> String {
        guard s.characters.count > 1 else {
            return s
        }
        
        var sChars = [Character](s.characters)
        let len = sChars.count
        var maxLen = 1
        var maxStart = 0
        var isPalin = Array(repeating: Array(repeating: false, count : len), count : len)
        
        // set palindrome whose len is 1
        for i in 0 ... len - 1 {
            isPalin[i][i] = true
        }
        
        // set palindrome whose len is 2
        for i in 0 ... len - 2 {
            if sChars[i] == sChars[i + 1] {
                isPalin[i][i + 1] = true
                maxLen = 2
                maxStart = i
            }
        }
        
        if len >= 3 {
            for length in 3 ... len {
                for i in 0 ... len - length {
                    if sChars[i] == sChars[i + length - 1] && isPalin[i + 1][i + length - 2] {
                        isPalin[i][i + length - 1] = true
                        maxLen = length
                        maxStart = i
                    }
                }
            }
        }
        
        return String(sChars[maxStart ... maxStart + maxLen - 1])
    }
}
