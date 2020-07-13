/**
 * Question Link: https://leetcode.com/problems/verifying-an-alien-dictionary/
 * Primary idea: Compare words one by one and make sure they are following the order
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class VerifyingAlienDictionary {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        let charToOrder = Dictionary(uniqueKeysWithValues: order.enumerated().map { ($0.1, $0.0) })
        
        for i in 0..<words.count - 1 {
            let currentWord = Array(words[i]), nextWord = Array(words[i + 1])
            var j = 0
            
            while j < min(currentWord.count, nextWord.count) {
                let currentChar = currentWord[j], nextChar = nextWord[j]
                
                guard currentChar != nextChar else {
                    j += 1
                    continue
                }
                
                if charToOrder[currentChar]! > charToOrder[nextChar]! {
                    return false
                } else {
                    break
                }
            }
            
            // edge case: "apple" vs. "app"; "kuvp" vs. "q"
            if j == nextWord.count && currentWord.count > nextWord.count {
                return false
            }
        }
        
        return true
    }
}