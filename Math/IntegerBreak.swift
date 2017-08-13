/**
 * Question Link: https://leetcode.com/problems/integer-break/
 * Primary idea: Final Result must be split as 2^m * 3^n. Lets say p = p1 + p2 +...+ pn,
 * 				 if p1 could be split as 2(p1 - 2), than it would be greater than p1 if p1 > 4.
 *				 same thing for 3(p1 - 3). Thus we spilt the original number to multiple 3s and 2s to 
 *				 get the final result
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

 class IntegerBreak {
    func integerBreak(n: Int) -> Int {
        var num = n
        var res = 1
    
        if num == 2 {
            return 1
        }   
        if num == 3 {
            return 2
        }
        
        while num > 4 {
            res *= 3
            num -= 3
        }
        res *= num
        
        return res
    }
}