/**
 * Question Link: https://leetcode.com/problems/isomorphic-strings/
 * Primary idea: Use two dictionaries to help
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class IsomorphicStrings {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var stDict = [Character: Character](), tsDict = [Character: Character]()
        let s = Array(s), t = Array(t)
        
        for (i, sChar) in s.enumerated() {
            let tChar = t[i]
            
            if stDict[sChar] == nil && tsDict[tChar] == nil {
                stDict[sChar] = tChar
                tsDict[tChar] = sChar
            } else if stDict[sChar] != tChar || tsDict[tChar] != sChar {
                return false
            }
        }
        
        return true
    }
}