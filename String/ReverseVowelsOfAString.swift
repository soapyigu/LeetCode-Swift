/**
 * Question Link: https://leetcode.com/problems/reverse-vowels-of-a-string/
 * Primary idea: Two pointers, iterate the string and swap two characters each time, 
 * 
 * Note: the input String is case sensitive; thus "aA" should be transferred to "Aa"
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ReverseVowelsOfAString {
    func reverseVowels(s: String) -> String {
        var left = 0
        var right = s.characters.count - 1
        var chars = [Character](s.characters)
        
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
            _swap(&chars, left, right)
            left += 1
            right -= 1
        }
        
        return String(chars)
    }
    
    private func _isVowel(char: Character) -> Bool {
        var char = String(char).lowercaseString
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            return true
        }
        
        return false
    }
    
    private func _swap(inout chars: [Character], _ p: Int, _ q: Int) {
        var temp = chars[p]
        chars[p] = chars[q]
        chars[q] = temp
    }
}