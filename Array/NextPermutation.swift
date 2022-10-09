/**
 * Question Link: https://leetcode.com/problems/next-permutation/
 * Primary idea: Traverse the number from right to left, and replace the first smaller one 
 *               with the least bigger one, then reverse all number afterwards
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class NextPermutation {
    func nextPermutation(_ nums: inout [Int]) {
        guard let violateIdx = findViolate(nums) else {
            nums.reverse()
            return
        }

        swap(&nums, findFirstGreater(nums, violateIdx), violateIdx)
        nums[(violateIdx + 1)...].reverse()
    }

    private func findFirstGreater(_ nums: [Int], _ violateIdx: Int) -> Int {
        for i in ((violateIdx + 1)..<nums.count).reversed() {
            if nums[i] > nums[violateIdx] {
                return i
            }
        }

        return -1
    }

    private func findViolate(_ nums: [Int]) -> Int? {
        for i in (1..<nums.count).reversed() {
            if nums[i] > nums[i - 1] {
                return i - 1
            }
        }

        return nil
    }

    private func swap(_ nums: inout [Int], _ l: Int, _ r: Int) {
        (nums[l], nums[r]) = (nums[r], nums[l])
    }
}
