/**
 * Question Link: https://leetcode.com/problems/perfect-squares/
 * Primary idea: Dynamic Programming, transition function is 
 *               nums[i] = min(nums[i], nums[i - j * j] + 1)
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class PerfectSquares {
    func numSquares(n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        
        var leastNums = [Int](count: n + 1, repeatedValue: Int.max)
        leastNums[0] = 0
        
        for i in 1...n {
            for j in 1...i  {
                if j * j > i {
                    break
                }
                leastNums[i] = min(leastNums[i], leastNums[i - j * j] + 1)
            }
        }
        
        return leastNums[n]
    }
}