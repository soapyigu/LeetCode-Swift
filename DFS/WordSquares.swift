/**
 * Question Link: https://leetcode.com/problems/word-squares/
 * Primary idea: Classic Depth-first Search, fill out row by row, choose correct word with fixed prefix, only need to care which column is used
 * 
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

 class WordSquares {
    func wordSquares(_ words: [String]) -> [[String]] {
        var paths = [[String]]()
        
        guard words.count > 0 else {
            return paths
        }
        
        var prefixWords = initPrefix(words), path = [String]()
        
        dfs(&paths, &path, prefixWords, 0, words[0].count)
        
        return paths
    }
    
    fileprivate func dfs(_ paths: inout [[String]], _ path: inout [String], _ prefixWords: [String:[String]], _ row: Int, _ len: Int) {
        if row == len {
            paths.append(Array(path))
            return
        }
        
        var pre = ""
        for i in 0..<row {
            pre = "\(pre)\(Array(path[i])[row])"
        }
        
        guard let words = prefixWords[pre] else {
            return
        }
        
        for word in words {
            path.append(word)
            dfs(&paths, &path, prefixWords, row + 1, len)
            path.removeLast()
        }
    }
    
    fileprivate func initPrefix(_ words: [String]) -> [String: [String]]{
        var prefix = [String: [String]]()
        
        for word in words {
            prefix[""] = prefix["", default:[]] + [word]
            
            var pre = ""
            for c in word {
                pre = "\(pre)\(c)"
                
                prefix[pre] = prefix[pre, default:[]] + [word]
            }
        }
        
        return prefix
    }
}