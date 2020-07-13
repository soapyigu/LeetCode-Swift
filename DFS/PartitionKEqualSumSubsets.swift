/**
 * Question Link: https://leetcode.com/problems/partition-to-k-equal-sum-subsets/
 * Primary idea: Divide the whole array into buckets and use 
 *               DFS to check whether there is a valid solution
 * 
 * Time Complexity: O(k^n), Space Complexity: O(n)
 *
 */

class PartitionKEqualSumSubsets {
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {        
        let sum = nums.reduce(0) { $0 + $1 }
        
        guard sum % k == 0 else {
            return false
        }
        
        let target = sum / k, nums = nums.sorted()
        var index = nums.count - 1, groupsEqualToK = Array(repeating: 0, count: k)
        
        guard nums[index] <= target else {
            return false
        }
        
        return dfs(&groupsEqualToK, target, nums, index)
    }
    
    private func dfs(_ groupsEqualToK: inout [Int], _ target: Int, _ nums: [Int], _ index: Int) -> Bool {
        if index < 0 {
            return true
        }
        
        let currentNum = nums[index]
        
        for i in 0..<groupsEqualToK.count {
            if groupsEqualToK[i] + currentNum <= target {
                groupsEqualToK[i] += currentNum
                
                if dfs(&groupsEqualToK, target, nums, index - 1) {
                    return true
                }
                
                groupsEqualToK[i] -= currentNum
            }
            
            if groupsEqualToK[i] == 0 {
                break
            }
        }
        
        return false
    }
}