/**
 * Question Link: https://leetcode.com/problems/sqrtx/
 * Primary idea: Binary Search, right should start with x / 2 + 1, thus its square is x + x ^ 2 / 4 + 1,
 *               which is definitely greater than x
 *
 * Note: please use (right - left) / 2 + left to get mid in case of integer overflow
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 *

class Sqrtx {
    func mySqrt(x: Int) -> Int {
        if x <= 0 {
            return x
        }
        
        var left = 0
        var right = x / 2 + 1
        
        while left <= right {
            var mid = (right - left) / 2 + left
            
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return right
    }
}