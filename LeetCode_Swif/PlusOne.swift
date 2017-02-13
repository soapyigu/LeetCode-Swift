/**
 * Question Link: https://leetcode.com/problems/plus-one/
 * Primary idea: Iterate and change the array from last to the first
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class PlusOne {
    func plusOne(digits: [Int]) -> [Int] {
        var digits = digits
        var index = digits.count - 1
        
        while index >= 0 {
            if digits[index] < 9 {
                digits[index] += 1
                return digits
            }
            
            digits[index] = 0
            index -= 1
        }
        
        digits.insert(1, atIndex: 0)
        return digits
    }
}