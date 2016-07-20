/**
 * Question Link: https://leetcode.com/problems/reverse-integer/
 * Primary idea: Return 0 is the reversal number exceeds the Int32 range.
 * Time Complexity: O(1)
 */
 
 class Solution {
    func reverse(x: Int) -> Int {
        if x < 0 {
            return 0 - reverse(0 - x)
        }
        
        var carry = 1
        var ret = 0
        for c in String(x).characters {
            let someString = String(c)
            if let someInt = Int(someString) {
                ret += someInt * carry
                carry *= 10
            }
        }
        
        if ret > Int(Int32.max) || ret < Int(Int32.min) {
            return 0
        }
        
        return ret
    }
}