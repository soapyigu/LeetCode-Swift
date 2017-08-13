/**
 * Question Link: https://leetcode.com/problems/word-search-ii/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions 
 *                  with the help of Trie
 * 
 * Time Complexity: O(mn^2), m is the longest length fo a word in words
 * Space Complexity: O(n^2)
 *
 */

class WordSearchII {
    func findWords(board: [[Character]], _ words: [String]) -> [String] {
        var res = [String]()
  
        let m = board.count
        let n = board[0].count

        let trie = _convertToTrie(words)
        var visited = [[Bool]](count: m, repeatedValue: Array(count: n, repeatedValue: false))
  
        for i in 0..<m {
            for j in 0..<n {
                _dfs(board, m, n, i, j, &visited, &res, trie, "")
            }
        }
  
        return res
    }
    
    private func _dfs(board: [[Character]], _ m: Int, _ n: Int, _ i: Int, _ j: Int, inout _ visited: [[Bool]], inout _ res: [String], _ trie: Trie, _ str: String) {
        // beyond matrix
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return
        }
  
        // check visited
        guard !visited[i][j] else {
            return
        }
  
        // check is word prefix
        let str = str + "\(board[i][j])"
        guard trie.isWordPrefix(str) else {
            return
        }
  
        // check word exist
        if trie.isWord(str) && !res.contains(str) {
            res.append(str)
        }
  
        // check four directions
        visited[i][j] = true
        _dfs(board, m, n, i + 1, j, &visited, &res, trie, str)
        _dfs(board, m, n, i - 1, j, &visited, &res, trie, str)
        _dfs(board, m, n, i, j + 1, &visited, &res, trie, str)
        _dfs(board, m, n, i, j - 1, &visited, &res, trie, str)
        visited[i][j] = false
    }
    
    func _convertToTrie(words: [String]) -> Trie {
        let trie = Trie()
  
        for str in words {
            trie.insert(str)
        }
  
        return trie
    }

    
    class Trie {
        var root: TrieNode
  
        init() {
            root = TrieNode(letter: Character("0"))
        }
  
        func insert(word: String) {
            var node = root
            var word = [Character](word.characters)
    
            for i in 0..<word.count {
                let c = word[i]
      
                if node.children[c] == nil {
                    node.children[c] = TrieNode(letter: c)
                }
      
                node = node.children[c]!
            }
    
            node.isEnd = true
        }
  
        func isWord(word: String) -> Bool {
            var node = root
            var word = [Character](word.characters)
    
            for i in 0..<word.count {
                let c = word[i]
      
                if node.children[c] == nil {
                    return false
                }
      
                node = node.children[c]!
            }
    
            return node.isEnd
        }
        
        func isWordPrefix(prefix: String) -> Bool {
            var node = root
            var prefix = [Character](prefix.characters)
    
            for i in 0..<prefix.count {
                let c = prefix[i]
      
                if node.children[c] == nil {
                    return false
                }
      
                node = node.children[c]!
            }
    
            return true
        }
    }

    class TrieNode {
        var letter: Character
        var isEnd: Bool
        var children: [Character:TrieNode]
  
        init(letter: Character) {
            self.letter = letter
            isEnd = false
            children = [Character:TrieNode]()
        }
    }
}
