/**
 * Question Link: https://leetcode.com/problems/longest-increasing-subsequence/
 * Primary idea: Dynamic Programming, update the array which ends at current index using binary search
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class LongestIncreasingSubsequence {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var res = [nums[0]]
        
        for i in 1..<nums.count {
            if res.last! < nums[i] {
                res.append(nums[i])
            } else {
                res[binarySearch(res, nums[i])] = nums[i]
            }
        }
        
        return res.count
    }

    private func binarySearch(_ num: Int, _ res: [Int]) -> Int {
        var l = 0, r = res.count - 1

        while l < r {
            let mid = (r - l) / 2 + l

            if res[mid] == num {
                return mid
            } else if res[mid] > num {
                r = mid
            } else {
                l = mid + 1
            }
        }

        return l
    }
}
