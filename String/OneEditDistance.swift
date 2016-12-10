/**
 * Question Link: https://leetcode.com/problems/one-edit-distance/
 * Primary idea: Two pointers to determine two strings' mutation
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class OneEditDistance {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        let sChars = Array(s.characters), tChars = Array(t.characters)
        let sLen = sChars.count, tLen = tChars.count
    
        guard abs(sLen - tLen) <= 1 && s != t else {
            return false
        }
        
        let s1 = sLen < tLen ? sChars : tChars, s2 = sLen < tLen ? tChars : sChars
        var index1 = 0, index2 = 0, foundDiff = false
        
        while index1 < s1.count && index2 < s2.count {
            if s1[index1] != s2[index2] {
                if foundDiff {
                    return false
                }
                foundDiff = true
                
                if s1.count < s2.count {
                    index2 += 1
                } else {
                    index1 += 1
                    index2 += 1
                }
            } else {
                index1 += 1
                index2 += 1
            }
        }
        
        return true
    }
}