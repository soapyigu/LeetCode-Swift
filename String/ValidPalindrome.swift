/**
 * Question Link: https://leetcode.com/problems/valid-palindrome/
 * Primary idea: For every index in the first half of the String, compare two values at mirroring indices.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        // Make String into an array of lowercase Characters
        let characters = s.lowercased().characters
        
        // Only keep alphanumeric characters.
        let cleaned = characters.filter { character in
            return character.description.rangeOfCharacter(from: CharacterSet.alphanumerics) != nil
        }
        
        // Compare values at mirroring indices.
        let total = cleaned.count
        for i in 0 ..< total/2 {
            if cleaned[i] != cleaned[total - 1 - i] {
                return false
            }
        }
        return true
    }
}
