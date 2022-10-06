/**
 * Question Link: https://leetcode.com/problems/longest-continuous-subarray-with-absolute-diff-less-than-or-equal-to-limit/description/
 * Primary idea: Slding window, use max and min queues to track largest difference along the way. Move left pointer to get the potential result.
 *
 * Note: k may be invalid, mention that with interviewer
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class LongestContinuousSubarrayLimit {
    func longestSubarray(_ nums: [Int], _ limit: Int) -> Int {
        var maxQueue = [Int](), minQueue = [Int](), left = 0, size = 0

        for (i, num) in nums.enumerated() {
            while !maxQueue.isEmpty && maxQueue.last! < num {
                maxQueue.removeLast()
            }
            while !minQueue.isEmpty && minQueue.last! > num {
                minQueue.removeLast()
            }

            maxQueue.append(num)
            minQueue.append(num)

            if maxQueue.first! - minQueue.first! > limit {
                if nums[left] == maxQueue.first! {
                    maxQueue.removeFirst()
                }
                if nums[left] == minQueue.first! {
                    minQueue.removeFirst()
                }

                left += 1
            }

            size = max(size, i - left + 1)
        }

        return size
    }
}