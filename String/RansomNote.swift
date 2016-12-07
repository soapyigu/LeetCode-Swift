/**
 * Question Link: https://leetcode.com/problems/ransom-note/
 * Primary idea: Use a dictionary to calculate the existence of characters in magazine 
 *               and check with the ransom Note
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class RansomNote {
    func canConstruct(ransomNote: String, _ magazine: String) -> Bool {
        var magazineMap = _strToMap(magazine)
        
        for char in ransomNote.characters {
            if magazineMap[char] == nil {
                return false
            } else if magazineMap[char] == 0 {
                return false
            } else {
                magazineMap[char]! -= 1 
            }
        }
        
        return true
    }
    
    private func _strToMap(magazine: String) -> [Character: Int] {
        var res = [Character: Int]()
        
        for char in magazine.characters {
            if res[char] == nil {
                res[char] = 1
            } else {
                res[char]! += 1
            }
        }
        
        return res
    }
}