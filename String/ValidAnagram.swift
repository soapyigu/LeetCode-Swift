/**
 * Question Link: https://leetcode.com/problems/valid-anagram/
 * Primary idea: Add each character from s to a dictionary and remove for each character from t. Then check for number of keys.
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class ValidAnagram {
    func isAnagram(s: String, _ t: String) -> Bool {
        guard s.characters.count == t.characters.count else { 
            return false 
        }
    
        var charsDict = [Character : Int]()
        
        for char in s.characters {
            if let num = charsDict[char] { 
                charsDict[char] = num + 1 
            } 
            else { 
                charsDict[char] = 1 
            }
        }
        
        for char in t.characters {
            if let num = charsDict[char] {
                if num == 1 { 
                    charsDict[char] = nil 
                } 
                else { 
                    charsDict[char] = num - 1 
                }
            } else { 
                return false 
            }
        }
        
        return charsDict.keys.count == 0
    }
}
