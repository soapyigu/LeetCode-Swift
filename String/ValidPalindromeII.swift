/**
 * Question Link: https://leetcode.com/problems/valid-palindrome-ii/
 * Primary idea: Take advantage of validPalindrome, and jump left and right separately to get correct character should be deleted
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ValidPalindromeII {
    func validPalindrome(_ s: String) -> Bool {
        let array = Array(s)
        return isPalindrome(array, 0, array.count - 1)
    }
    
    fileprivate func isPalindrome(_ array: [Character], _ i: Int, _ j: Int, alreadyRemoved: Bool = false) -> Bool {
        var i = i, j = j
        while i < j {
            if array[i] != array[j] {
                if alreadyRemoved {
                    return false
                } else {
                    return isPalindrome(array, i + 1, j, alreadyRemoved: true) || 
                           isPalindrome(array, i, j - 1, alreadyRemoved: true)
                }
            } else {
                i += 1
                j -= 1
            }
        }
        return true
    }
}
