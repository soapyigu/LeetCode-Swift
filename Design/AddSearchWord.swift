/**
 * Question Link: https://leetcode.com/problems/add-and-search-word-data-structure-design/
 * Primary idea: Use trie to add and search word. For '.' case we iterate through all sub nodes.
 *
 * Time Complexity: addWord - O(n), n stands for the length of the word; search - O(24^n)
 * Space Complexity: addWord - O(n), search - O(1)
 *
 */


class WordDictionary {
   	
    var head: TrieNode

    /** Initialize your data structure here. */
    init() {
        head = TrieNode()
    }
    
    /** Adds a word into the data structure. */
    func addWord(_ word: String) {
        var node = head
        
        for char in word {
            if node.children[char] == nil {
                node.children[char] = TrieNode()
            }
            
            node = node.children[char]!
        }
        
        node.isEnd = true
    }
    
    /** Returns if the word is in the data structure. A word could contain the dot character '.' to represent any one letter. */
    func search(_ word: String) -> Bool {
        return search(word, head)
    }
    
    private func search(_ word: String, _ startNode: TrieNode) -> Bool {
        var node = startNode
        
        guard let char = word.first else {
            return node.isEnd
        }
        
        if char != "." {
            if node.children[char] == nil {
                return false
            } else {
                return search(String(word.dropFirst()), node.children[char]!)
            }
        } else {
            if node.children.isEmpty {
                return false
            } else {
                for childNode in node.children.values {
                    if search(String(word.dropFirst()), childNode) {
                        return true
                    }
                }
                return false
            }
        }
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

/**
 * Your WordDictionary object will be instantiated and called as such:
 * let obj = WordDictionary()
 * obj.addWord(word)
 * let ret_2: Bool = obj.search(word)
 */