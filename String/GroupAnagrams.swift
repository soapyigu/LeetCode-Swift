/**
 * Question Link: https://leetcode.com/problems/anagrams/
 * Primary idea: Iterate the string array and categories strings with the same sorted one
 *
 * Time Complexity: O(nmlogm + nlogn), n stands for number of words, m stands for the length of a word
 *                  Space Complexity: O(n)
 */

class GroupAnagrams {
    func groupAnagrams(strs: [String]) -> [[String]] {
        var res = [[String]]()
        var map = [String: [String]]()
        
        for str in strs {
            let sortedStr = String(str.characters.sort { $0 < $1 })
      
            var anagrams = [String]()
            if map[sortedStr] != nil {
                anagrams = map[sortedStr] as [String]!
            }
            anagrams.append(str)
            map[sortedStr] = anagrams
        }
    
        _convertMapToLists(map, &res)
        return res
    }
    
    private func _convertMapToLists(map: [String: [String]], inout _ res: [[String]]) {
        for anagrams in map.values {
            let anagrams = anagrams.sort({$0 < $1})
            res.append(anagrams)
        }
    }
}