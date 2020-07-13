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
        var left = 0, right = s.count - 1
        var chars = Array(s)
        
        while left < right {
            let isVowelLeft = isVowel(chars[left]), isVowelRight = isVowel(chars[right])
            
            if isVowelLeft && isVowelRight {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            } else {
                if !isVowelLeft {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        
        return String(chars)
    }

    private func isVowel(_ char: Character) -> Bool {
        return Set("aeiouAEIOU").contains(char)
    }
}