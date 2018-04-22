/**
 * Question Link: https://leetcode.com/problems/maximum-sum-of-3-non-overlapping-subarrays/
 * Primary idea: Dynamic Programming, find point where sum of [0, i - 1], [i, i + k - 1], [i + k, count - 1] is largest, where k <= i <= count - 2k
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class MaximumSumThreeNonOverlappingSubarrays {
    func maxSumOfThreeSubarrays(_ nums: [Int], _ k: Int) -> [Int] {
        let sums = createSums(nums), n = nums.count
        let leftIndices = createLeftIndices(sums, n, k), rightIndices = createRightIndices(sums, n, k)
        var total = 0, res = [-1, -1, -1]
        
        for i in k...n - 2 * k {
            let l = leftIndices[i - 1], r = rightIndices[i + k]
            let currentTotal = (sums[i+k] - sums[i]) + (sums[l + k] - sums[l]) + (sums[r + k] - sums[r]) 
            
            if currentTotal > total {
                total = currentTotal
                res = [l, i, r]
            }
        }
       
        return res
    }
    
    fileprivate func createSums(_ nums: [Int]) -> [Int] {
        var sums = [0], currentSum = 0
        
        for num in nums {
            currentSum += num
            
            sums.append(currentSum)
        }
        
        return sums
    }
    
    // DP for starting index of left
    fileprivate func createLeftIndices(_ sums: [Int], _ n: Int, _ k: Int) -> [Int] {
        var leftIndices = Array(repeating: 0, count: n), maxSum = sums[k] - sums[0]
        
        for i in k..<n {
            if sums[i + 1] - sums[i + 1 - k] > maxSum {
                leftIndices[i] = i + 1 - k
                maxSum = sums[i + 1] - sums[i + 1 - k]
            } else {
                leftIndices[i] = leftIndices[i - 1]
            }
        }
        
        return leftIndices
    }
    
    // DP for starting index of right
    fileprivate func createRightIndices(_ sums: [Int], _ n: Int, _ k: Int) -> [Int] {
        var rightIndices = Array(repeating: 0, count: n), maxSum = sums[n] - sums[n - k]
        rightIndices[n - k] = n - k
        
        for i in (0...n - k - 1).reversed() {
            if sums[i + k] - sums[i] >= maxSum {
                rightIndices[i] = i
                maxSum = sums[i + k] - sums[i]
            } else {
                rightIndices[i] = rightIndices[i + 1]
            }
        }
        
        return rightIndices
    }
}