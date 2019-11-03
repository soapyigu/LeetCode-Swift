/**
 * Question Link: https://leetcode.com/problems/perfect-squares/
 * Primary idea: Binary Search, base on the num itself, from 0 to num, divide the search by half each time  
 *               
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class PerfectSquares {
    func numSquares(n: Int) -> Int {
        if num == 1 {
            return true 
        }

        var l = 0, r = num / 2 
        while l <= r {
            let mid = l + (r - l) / 2
            let tmp = mid * mid 
            if tmp == num {
                return true 
            } else if tmp < num {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }

        return false
    }
}
