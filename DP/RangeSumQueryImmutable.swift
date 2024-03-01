/**
 * Question Link: https://leetcode.com/problems/range-sum-query-immutable/
 * Primary idea: Calculate the sum of the elements of nums between indices left and right
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class NumArray {
	var sums: [Int] = []

	init(_ nums: [Int]) {
		var currentSum = 0

		for num in nums {
			currentSum += num
			sums.append(currentSum)
		}
		print(sums)
	}

	func sumRange(_ left: Int, _ right: Int) -> Int {
		if left == 0 {
			return sums[right]
		}
		return sums[right] - sums[left-1]
	}
}
