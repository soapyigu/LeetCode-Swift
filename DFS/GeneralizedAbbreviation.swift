/**
 * Question Link: https://leetcode.com/problems/generalized-abbreviation/
 * Primary idea: Classic Depth-first Search
 * 
 * Time Complexity: O(n!), Space Complexity: O(2^n)
 *
 */

class GeneralizedAbbreviation {
    func generateAbbreviations(_ word: String) -> [String] {
        var res = [String]()
        let chars = Array(word.characters)
        
        dfs(chars, &res, "", 0)
        
        return res
    }
    
    private func dfs(_ word: [Character], _ res: inout [String], _ subset: String, _ index: Int) {
        if word.count == index {
            res.append(String(subset))
            return
        }
        
        res.append(subset + String(word.count - index))
        
        for i in index ..< word.count {
            let offset = i - index
            if offset != 0 {
                dfs(word, &res, subset + String(offset) + String(word[i]), i + 1)
            } else {
                dfs(word, &res, subset + String(word[i]), i + 1)
            }
        }
    }
}