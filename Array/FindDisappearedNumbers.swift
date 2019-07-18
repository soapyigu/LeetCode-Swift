/**
 * Question Link: https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
 * primary idea: Traverse the array and get num really position in array, then set negative.
 *               In the final, filter greater than 0 num.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class FindDisappearedNumbers {
  func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var nums = nums
    var result = [Int]()

    for i in 0..<nums.count {
      let index = abs(nums[i]) - 1
      if nums[index] > 0 {
        nums[index] = -nums[index]
      }
    }

    for i in 0..<nums.count {
      if nums[i] > 0 {
        result.append(i+1)
      }
    }

    return result
  }
}
