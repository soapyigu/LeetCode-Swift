/**
 * Question Link: https://leetcode.com/problems/first-unique-character-in-a-string/
 * Primary idea: Keep track of existence of each character in the string
 * 
 * Note: The maximum space of the dictionary is 26, so space complexity is O(1)
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class FirstUniqueCharacterInString {
    func firstUniqChar(_ s: String) -> Int {
        var uniqueCharactersIndex = -1
        
        guard s.count > 0 else {
            return uniqueCharactersIndex
         }
        
        var hashTable = [Character:Int]()
        
        for eachChar in s {
            if let countExist = hashTable[eachChar] {
                hashTable[eachChar] = countExist + 1
            } else {
                hashTable[eachChar] = 1
            }
        }
        
        for (index,eachChar) in s.enumerated() {
           let count = hashTable[eachChar]
           
            if count == 1 {
                uniqueCharactersIndex = index
                break
            }
                
        } 
        
        return uniqueCharactersIndex
        
    }
}
