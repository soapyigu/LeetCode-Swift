/**
 * Question Link: https://leetcode.com/problems/word-break-ii/
 * Primary idea: DFS. Termination case is index hits the end of the string
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class WordBreakII {
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        var res = [String](), path = [String]()
        
        dfs(&res, &path, Array(s), Set(wordDict), 0)
        
        return res
    }
    
    private func dfs(_ res: inout [String], _ path: inout [String], _ s: [Character], _ dict: Set<String>, _ idx: Int) {
        if idx >= s.count {
            res.append(path.joined(separator: " "))
            return
        }
        
        for i in idx..<s.count {
            let currentWord = String(s[idx...i])
            
            guard dict.contains(currentWord) else {
                continue
            }
            
            path.append(currentWord)
            dfs(&res, &path, s, dict, i + 1)
            path.removeLast()
        }
    }
}
