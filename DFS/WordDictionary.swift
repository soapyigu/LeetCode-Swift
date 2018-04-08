/**
 * Question Link: https://leetcode.com/problems/add-and-search-word-data-structure-design/
 * Primary idea: Trie with DFS to resolve search problem
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class WordDictionary {
  var trie = Trie()

  func add(word: String) {
    trie.add(word: word)
  }

  func search(word: String) -> Bool {
    return trie.search(word:word)
  }
}

class TrieNode {
  var children: [Character: TrieNode]
  var isEnd: Bool

  init() {
    self.children = [Character: TrieNode]()
    self.isEnd = false
  }
}

class Trie {
  var root: TrieNode

  init() {
    root = TrieNode()
  }

  func add(word: String) {
    var node = root

    for char in word {
      if node.children[char] == nil {
        node.children[char] = TrieNode()
      }

      node = node.children[char]!
    }

    node.isEnd = true
  }
  
  func search(word:String) -> Bool {
    return dfsSearch(word: word, index: 0, node: root)
  }
  
  fileprivate func dfsSearch(word: String, index: Int, node: TrieNode) -> Bool {
    if index == word.count {
      return node.isEnd
    }
    
    let char = Array(word)[index]
    
    if char != "." {
      guard let nextNode = node.children[char] else {
        return false
      }
      
      return dfsSearch(word: word, index: index + 1, node: nextNode)
    } else{
      for key in node.children.keys {
        if dfsSearch(word: word, index: index + 1, node: node.children[key]!) {
          return true
        }
      }
      
      return false
    }
  }
}