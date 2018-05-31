/**
 * Question Link: https://leetcode.com/problems/strobogrammatic-number/
 * Primary idea: Two pointers, compare two characters until they are all valid
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class StrobogrammaticNumber {
    func isStrobogrammatic(_ num: String) -> Bool {
        let numChars = Array(num)
        var i = 0, j = num.count - 1
        
        while i <= j {
            if isValid(numChars[i], numChars[j]) {
                i += 1
                j -= 1
            } else {
                return false
            }
        }
        
        return true
    }
    
    fileprivate func isValid(_ charA: Character, _ charB: Character) -> Bool {
        if charA == charB {
            return ["0", "1", "8"].contains(charA)
        } else {
            if (charA == "6" && charB == "9") || (charA == "9" && charB == "6") {
                return true
            } else {
                return false
            }
        }
    }
}

