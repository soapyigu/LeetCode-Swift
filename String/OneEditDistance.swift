/**
 * Question Link: https://leetcode.com/problems/one-edit-distance/
 * Primary idea: Two pointers to determine two strings' mutation
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class OneEditDistance {
    func isOneEditDistance(s: String, _ t: String) -> Bool {
        let sLen = s.characters.count
        let tLen = t.characters.count
    
        guard abs(sLen - tLen) <= 1 else {
            return false
        }
        
        if sLen > tLen {
            return _isAddChar(t, s)
        } else if sLen == tLen {
            return _isReplaceChar(s, t)
        } else {
            return _isAddChar(s, t)
        }
    }
    
    private func _isAddChar(s: String, _ t: String) -> Bool {
        let sChars = [Character](s.characters)
        let tChars = [Character](t.characters)
        
        var tIndex = 0
        var sIndex = 0
        
        while sIndex < sChars.count && tIndex < tChars.count {
            if sChars[sIndex] != tChars[tIndex]  {
                tIndex += 1
            } else {
                tIndex += 1
                sIndex += 1
            }
        }
        
        return tIndex - sIndex <= 1
    }
    
    private func _isReplaceChar(s: String, _ t: String) -> Bool {
        let sChars = [Character](s.characters)
        let tChars = [Character](t.characters)
        
        var tIndex = 0
        var diff = 0
        
        for sIndex in 0 ..< sChars.count {
            if sChars[sIndex] != tChars[tIndex] {
                diff += 1
            }
            
            tIndex += 1
        }
        
        return diff == 1
    }
}