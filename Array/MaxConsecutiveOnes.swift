/**
 * Question Link: https://leetcode.com/problems/max-consecutive-ones/
 * Primary idea: Iterate the whole array and summarize consective ones locally and update globally encountering 0
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        // Output
        var maximumConsecutiveSum = 0 
        
        guard !nums.isEmpty else {
            return maximumConsecutiveSum
        }
        
        var currentRunningSum = 0 
        for eachNumber in nums {
            if eachNumber == 1 {
                currentRunningSum += 1
            } else {
                currentRunningSum = 0
            }
            
            if currentRunningSum > maximumConsecutiveSum {
              maximumConsecutiveSum = currentRunningSum
            }
        }
        
        return maximumConsecutiveSum
    }
}
