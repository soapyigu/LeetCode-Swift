/**
 * Question Link: https://leetcode.com/problems/divide-two-integers/
 * Primary idea: Use left shift and subtraction to get the number of every digit
 * Time Complexity: O(logn), Space Complexity: O(1)
 *
 */

 class DivideTwoIntegers {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if divisor == 0 {
            return Int.max
        }
        
        let isNegative = (dividend < 0) != (divisor < 0)
        var dividend = abs(dividend), divisor = abs(divisor), count = 0
        
        while dividend >= divisor {
            var shift = 0
            
            while dividend >= (divisor << shift) {
                shift += 1
            }
            
            dividend -= divisor << (shift - 1)
            count += 1 << (shift - 1)
        }
        
        return isNegative ? -count : count
    }
}
