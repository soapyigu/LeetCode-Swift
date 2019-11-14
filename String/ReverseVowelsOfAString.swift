/**
 * Question Link: https://leetcode.com/problems/reverse-vowels-of-a-string/
 * Primary idea: Two pointers, iterate the string and swap two characters each time, 
 * 
 * Note: the input String is case sensitive; thus "aA" should be transferred to "Aa"
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ReverseVowelsOfAString {
    func reverseVowels(_ s: String) -> String {
        var chars = Array(s)
        var left = 0, right = chars.count - 1
        
        while left < right {
            while left < right && !_isVowel(chars[left]) {
                left += 1
            }
            while left < right && !_isVowel(chars[right]) {
                right -= 1
            }
            guard left < right else {
                break
            }
            chars.swapAt(left, right)
            left += 1
            right -= 1
        }
        
        return String(chars)
    }
    
    private func _isVowel(_ char: Character) -> Bool {
        let char = char.lowercased()
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            return true
        }
        
        return false
    }
}