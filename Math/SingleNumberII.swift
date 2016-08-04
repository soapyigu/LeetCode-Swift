/**
 * Question Link: https://leetcode.com/problems/single-number-ii/
 * Primary idea: Every number has 64 bits, for the i-th bit of each number.
 *               In total, we should have (nums.count) 0s and 1s.
 *               If the i-th bit of the single number is 1, then we should have (3n + 1) 1s, and (3n) 0s.
 *               Otherwise, the i-th bit is 0.
 *               In this way, we can calculate each bit of the single number.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class SingleNumberII {
    func singleNumber(nums: [Int]) -> Int {
        var ans = 0
        var sum = 0
        
        for i in 0 ..< 64 {
            sum = 0
            let tmp = (1 << i)
            for j in 0 ..< nums.count {
                if tmp & nums[j] != 0 {
                    sum = sum + 1
                }
            }
            
            if sum % 3 == 1 {
                ans = ans ^ tmp
            }
        }
        
        return ans
    }
}
