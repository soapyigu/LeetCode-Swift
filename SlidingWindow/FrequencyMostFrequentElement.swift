/**
 * Question Link: https://leetcode.com/problems/frequency-of-the-most-frequent-element/
 * Primary idea: Slding window, sort the nums and move left if k cannot make current window even.
 *
 * Time Complexity: O(nlogn), Space Complexity: O(1)
 *
 */

class FrequencyMostFrequentElement {
    func maxFrequency(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted()
        var left = 0, res = 1, sum = 0

        for (i, num) in nums.enumerated() {
            sum += num

            while (i - left + 1) * num - sum > k {
                sum -= nums[left]
                left += 1
            }

            res = max(res, i - left + 1)
        }

        return res
    }
}
