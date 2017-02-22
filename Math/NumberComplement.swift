/**
 * Question Link: https://leetcode.com/problems/number-complement/
 * Primary idea: Caculate digit by digit, and use offset to left shift
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class NumberComplement {
    func findComplement(_ num: Int) -> Int {
        var res = 0, num = num, offset = 0
  
        while num > 0 {
            res = res + ((num & 1) ^ 1) << offset
    
            num = num >> 1
            offset += 1
        }
  
        return res
    }
}