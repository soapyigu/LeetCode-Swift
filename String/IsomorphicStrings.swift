/**
 * Question Link: https://leetcode.com/problems/isomorphic-strings/
 * Primary idea: Use two dictionaries to help
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class IsomorphicStrings {
    func isIsomorphic(s: String, _ t: String) -> Bool {
        var stDict = [Character: Character]()
        var tsDict = [Character: Character]()
        
        let sChars = [Character](s.characters)
        let tChars = [Character](t.characters)
        
        guard sChars.count == tChars.count else {
            return false
        }
        
        for i in 0..<sChars.count {
            let sCurrent = sChars[i]
            let tCurrent = tChars[i]
            
            if stDict[sCurrent] == nil && tsDict[tCurrent] == nil {
                stDict[sCurrent] = tCurrent
                tsDict[tCurrent] = sCurrent
            } else if stDict[sCurrent] != tCurrent || tsDict[tCurrent] != sCurrent {
                return false
            }
        }
        
        return true
    }
}