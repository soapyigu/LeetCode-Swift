/**
 * Question Link: https://leetcode.com/problems/implement-trie-prefix-tree/
 * Primary idea: implement a tree data structure where each node has a dictionary storing
 *               all descendants having a common prefix.
 *
 * Time Complexity: O(m) where m is the length of a target string
 * Space Complexity: insert - O(m), search - O(1), startsWith - O(1)
 *
 */

class Trie {
    private var nodes: [Character: Trie]
    
    /** Initialize your data structure here. */
    init() {
        nodes = [:]
    }
    
    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        var trie = self
        word.forEach {
            if let subTrie = trie.nodes[$0] {
                trie = subTrie
            } else {
                let subTrie = Trie()
                trie.nodes[$0] = subTrie
                trie = subTrie
            }
        }
        trie.nodes["#"] = Trie()
    }
    
    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        var trie = self
        for char in word {
            guard let subTrie = trie.nodes[char] else {
                return false
            }
            trie = subTrie
        }
        return trie.nodes["#"] != nil;
    }
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        var trie = self
        for char in prefix {
            guard let subTrie = trie.nodes[char] else {
                return false
            }
            trie = subTrie
        }
        return true
    }
}
