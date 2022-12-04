/**
 * Question Link: https://leetcode.com/problems/search-suggestions-system/
 * Primary idea: Use trie to add and search prefix (DFS).
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class SearchSuggestionsSystem {
    func suggestedProducts(_ products: [String], _ searchWord: String) -> [[String]] {
        let trie = Trie()
        var res = [[String]]()
    
        products.forEach { trie.insert($0) }
        
        return (1...searchWord.count).map { trie.searchWords(for: String(searchWord.prefix($0))) }
    }
    
    private class Trie {
        let root = TrieNode()
        
        func insert(_ word: String) {
            var node = root
            
            for char in word {
                if node.charNodeMap[char] == nil {
                    node.charNodeMap[char] = TrieNode()
                }
                    
                node = node.charNodeMap[char]!
            }
            
            node.isWord = true
        }
        
        func searchWords(for term: String) -> [String] {
            var res = [String](), node = root
            
            for char in term {
                guard let next = node.charNodeMap[char] else {
                    return res
                }
                
                node = next
            }
            
            dfs(&res, term, node)
            
            return Array(res.sorted().prefix(3))
        }
        
        private func dfs(_ res: inout [String], _ path: String, _ node: TrieNode) {
            if node.isWord {
                res.append(path)
            }
            
            for (char, next) in node.charNodeMap {
                dfs(&res, path + String(char), next)
            }
        }
    }
    
    private class TrieNode {
        var isWord: Bool
        var charNodeMap: [Character: TrieNode]
        
        init() {
            isWord = false
            charNodeMap = [Character: TrieNode]()
        }
    }
}
