/**
 * Question Link: https://leetcode.com/problems/powx-n/
 * Primary idea: Classic Recursion and handle positive/negative case at first
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class Pow {
    func myPow(x: Double, _ n: Int) -> Double {
        guard n != 0 else {
            return 1
        }
        guard x != 0 else {
            return 0
        }
        
        var res = _helper(abs(x), abs(n))
        
        if n < 0 {
            res = 1 / res
        }
        if n % 2 != 0 && x < 0 {
            res = -res
        }
        
        return res
    }
    
    private func _helper(x: Double, _ n: Int) -> Double {
        guard n != 0 else {
            return 1
        }
        guard n != 1 else {
            return x
        }
        
        if n % 2 == 0 {
            return _helper(x * x, n / 2)
        } else {
            return _helper(x, n - 1) * x
        }
    }
}