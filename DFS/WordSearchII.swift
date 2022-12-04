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
    
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        let trie = Trie(words), m = board.count, n = board[0].count
        var isVisited = Array(repeating: Array(repeating: false, count: n), count: m), res = Set<String>()
        
        for i in 0..<m {
            for j in 0..<n {
                search(board, trie, &res, i, j, &isVisited, trie.root, "", m, n)
            }
        }
        
        return Array(res)
    }
    
    private func search(_ board: [[Character]], _ trie: Trie, _ res: inout Set<String>, _ i: Int, _ j: Int, _ isVisited: inout [[Bool]], _ currentNode: TrieNode, _ currentStr: String, _ m: Int, _ n: Int) {
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return
        }
        
        guard !isVisited[i][j] else {
            return
        }
        
        guard let child = currentNode.children[board[i][j]] else {
            return
        }
        
        isVisited[i][j] = true
            
        let str = currentStr + "\(board[i][j])"
            
        if child.isEnd {
            res.insert(str)
        }
        
        search(board, trie, &res, i + 1, j, &isVisited, child, str, m, n)
        search(board, trie, &res, i - 1, j, &isVisited, child, str, m, n)
        search(board, trie, &res, i, j + 1, &isVisited, child, str, m, n)
        search(board, trie, &res, i, j - 1, &isVisited, child, str, m, n)
            
        isVisited[i][j] = false
    }
    
    class Trie {
        var root: TrieNode
        
        init(_ words: [String]) {
            root = TrieNode()
            
            words.forEach { insert($0) }
        }
        
        private func insert(_ word: String) {
            var node = root
            
            for char in word {
                if node.children[char] == nil {
                    node.children[char] = TrieNode()
                }
                
                node = node.children[char]!
            }
            
            node.isEnd = true
        }
    }
    
    class TrieNode {
        var isEnd: Bool
        var children: [Character: TrieNode]
        
        init() {
            isEnd = false
            children = [Character: TrieNode]()
        }
    }
}
