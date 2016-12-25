/**
 * Question Link: https://leetcode.com/problems/one-edit-distance/
 * Primary idea: Two pointers to determine two strings' mutation
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class OneEditDistance {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        let sChars = Array(s.characters), tChars = Array(t.characters)
        var foundDiff = false, i = 0, j = 0
        
        let shorter = sChars.count < tChars.count ? sChars : tChars
        let longer = sChars.count < tChars.count ? tChars : sChars
        
        guard longer.count - shorter.count < 2 && s != t else {
            return false
        }
        
        while i < shorter.count && j < longer.count {
            if shorter[i] != longer[j] {
                if foundDiff {
                    return false
                }
                
                foundDiff = true
                if shorter.count < longer.count {
                    j += 1
                } else {
                    i += 1
                    j += 1
                }
            } else {
                i += 1
                j += 1
            }
        }
        
        return true
    }
}