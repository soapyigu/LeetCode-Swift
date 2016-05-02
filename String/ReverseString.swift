/**
 * Question Link: https://leetcode.com/problems/reverse-string/
 * Primary idea: Two pointers, iterate the string and swap two characters each time
 * 
 * Note: Swift does not have a way to access a character in a string with O(1), 
 *       thus we have to first transfer the string to a character array
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ReverseString {
    func reverseString(s: String) -> String {
        var left = 0
        var right = s.characters.count - 1
        var chars = [Character](s.characters)
        
        while left < right {
            _swap(&chars, left, right)
            left += 1
            right -= 1
        }
        
        return String(chars)
    }
    
    private func _swap(inout chars:[Character], _ p: Int, _ q: Int) {
        var temp = chars[p]
        chars[p] = chars[q]
        chars[q] = temp
    }
}