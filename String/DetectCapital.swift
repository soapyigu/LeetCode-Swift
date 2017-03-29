/**
 * Question Link: https://leetcode.com/problems/detect-capital/
 * Primary idea: Counts uppercased characters then compare to the standards.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class DetectCapital {
    func detectCapitalUse(_ word: String) -> Bool {
        var capitalNum = 0, isFirstUpperCased = false
  
        for char in word.characters {
            if char.isUpperCased() {
                capitalNum += 1
            }
        }
        
        if let firstChar = word.characters.first {
            isFirstUpperCased = firstChar.isUpperCased()
        }
  
        return capitalNum == 0 || (capitalNum == 1 && isFirstUpperCased) || capitalNum == word.characters.count
    }
}

fileprivate extension Character {
  func isUpperCased() -> Bool {
    return String(self).uppercased() == String(self)
  }
}