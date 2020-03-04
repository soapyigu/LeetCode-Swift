/**
 * Question Link: https://leetcode.com/problems/word-squares/
 * Primary idea: Classic Depth-first Search, fill out row by row, choose correct word with fixed prefix, only need to care which column is used
 * 
 * Time Complexity: O(n^2), Space Complexity: O(n^2)
 *
 */

 class WordSquares {
    func wordSquares(_ words: [String]) -> [[String]] {
        guard let first = words.first else {
            return [[String]]()
        }
        
        let prefixesToWords = buildMaps(words), rowNum = first.count
        var paths = [[String]](), path = [String]()
        
        dfs(&paths, path, prefixesToWords, rowNum, 0)
        
        return paths
    }
    
    private func dfs(_ paths: inout [[String]], _ path: [String], _ prefixesToWords: [String: [String]], _ rowNum: Int, _ currentRow: Int) {
        if currentRow == rowNum {
            paths.append(path)
            return
        }
        
        var prefix = ""
        for i in 0..<currentRow {
            prefix.append(Array(path[i])[currentRow])
        }
        
        guard let words = prefixesToWords[prefix] else {
            return
        }
        
        for word in words {
            dfs(&paths, path + [word], prefixesToWords, rowNum, currentRow + 1)
        }
    }
    
    private func buildMaps(_ words: [String]) -> [String: [String]] {
        var res = [String: [String]]()
        
        for word in words {
            for prefix in prefixes(word) {
                res[prefix, default: []].append(word)
            }
        }
        
        return res
    }
    
    private func prefixes(_ word: String) -> [String] {
        var res = [""], prefix = ""
        
        for char in word {
            prefix.append(char)
            res.append(prefix)
        }
        
        return res
    }
}