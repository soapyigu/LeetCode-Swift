/**
 * Question Link: https://leetcode.com/problems/jump-game/
 * Primary idea: check each position with the previous farest step can reach. If i > last farest step, means cannot reach
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class JumpGame {
    func canJump(_ nums: [Int]) -> Bool {
        var max = 0
        
        for i in 0 ..< nums.count {
            let farestStep = i + nums[i]
            if i > max {
                return false
            }
            max = max > farestStep ? max : farestStep
        }
        
        return true
    }
}
