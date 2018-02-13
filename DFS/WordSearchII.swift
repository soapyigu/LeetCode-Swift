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
}

    
class TrieNode {
    var isEnd: Bool
    var letter: Character
    var children: [Character: TrieNode]
  
    init(_ letter: Character) {
        self.isEnd = false
        self.letter = letter
        self.children = [Character: TrieNode]()
    }
}


class Trie {
    var root: TrieNode?
  
    init() {
        root = TrieNode(Character("0"))
    }
  
    func insert(_ word: String) {
        var node = root
    
        for char in word {
            if node?.children[char] == nil {
                node?.children[char] = TrieNode(char)
            }
      
            node = node?.children[char]
        }
    
        node?.isEnd = true
    }
  
    func search(_ word: String) -> Bool {
        var node = root
    
        for char in word {
            guard let childTrieNode = node?.children[char] else {
                return false
            }
      
            node = childTrieNode
        }
    
        return node?.isEnd
    }
  
    func start(with word: String) -> Bool {
        var node = root
    
        for char in word {
            guard let childTrieNode = node?.children[char] else {
                return false
            }
      
            node = childTrieNode
        }
    
        return true
    }
}
