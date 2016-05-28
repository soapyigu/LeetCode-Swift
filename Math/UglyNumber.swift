/**
 * Question Link: https://leetcode.com/problems/ugly-number/
 * Primary idea: Divided by 2, 3, 5 until it is equal to 1
 * Time Complexity: O(logn), Space Complexity: O(1)
 *
 */

class UglyNumber {
    func isUgly(num: Int) -> Bool {
        guard num > 0 else {
            return false
        }
        
        var num = num
        
        while num != 1 {
            if num % 2 == 0 {
                num /= 2
            } else if num % 3 == 0 {
                num /= 3
            } else if num % 5 == 0 {
                num /= 5
            } else {
                return false
            }
        }
        
        return true
    }
}