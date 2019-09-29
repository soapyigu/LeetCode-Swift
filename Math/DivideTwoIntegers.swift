/**
 * Question Link: https://leetcode.com/problems/divide-two-integers/
 * Primary idea: Use left shift and subtraction to get the number of every digit
 * Time Complexity: O(logn), Space Complexity: O(1)
 *
 */

 class DivideTwoIntegers {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        let isPositive = (dividend < 0) == (divisor < 0)
        var dividend = abs(dividend), divisor = abs(divisor), count = 0
        
        while dividend >= divisor {
            var shift = 0
            
            while dividend >= (divisor << shift) {
                shift += 1
            }
            
            dividend -= divisor << (shift - 1)
            
            count += (1 << (shift - 1))
        }
        
        return refactorCount(count, isPositive)
    }
    
    private func refactorCount(_ count: Int, _ isPositive: Bool) -> Int {
        let INTMAX = 2147483647
        var count = count
        
        if isPositive {
            if count > INTMAX {
                count = INTMAX
            }
        } else {
            count *= -1
        }
        
        return count
    }
}
