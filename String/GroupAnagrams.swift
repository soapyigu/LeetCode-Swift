/**
 * Question Link: https://leetcode.com/problems/anagrams/
 * Primary idea: Iterate the string array and categories strings with the same sorted one
 *
 * Time Complexity: O(nmlogm), n stands for number of words, m stands for the length of a word
 * Space Complexity: O(n)
 */

class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var sortedStrToStrs = [String: [String]]()
  
        for str in strs {
            let sortedStr = String(str.sorted())
            
            sortedStrToStrs[sortedStr, default: []].append(str)
        }
        
        return Array(sortedStrToStrs.values)
    }
}
