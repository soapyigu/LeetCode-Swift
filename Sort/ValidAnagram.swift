/**
 * Question Link: https://leetcode.com/problems/valid-anagram/
 * Primary idea: Transfer string to char array and sort, compare the sort one
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 */

class ValidAnagram {
    func isAnagram(s: String, _ t: String) -> Bool {
        guard s.characters.count == t.characters.count else {
            return false
        }
        
        return sortStr(s) == sortStr(t)
    }
    
    private func sortStr(s: String) -> [Character] {
        var sChars = [Character](s.characters)
        sChars.sortInPlace({$0 < $1})
        return sChars
    }
}