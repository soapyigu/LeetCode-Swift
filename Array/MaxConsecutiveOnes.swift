/**
 * Question Link: https://leetcode.com/problems/max-consecutive-ones/
 * Primary idea: Iterate the whole array and summarize consective ones locally and update globally encountering 0
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var globalMax = 0, localMax = 0
        
        for num in nums {
            if num == 1 {
                localMax += 1
                globalMax = max(globalMax, localMax)
            } else {
                localMax = 0
            }
        }
        
        return globalMax
    }
}