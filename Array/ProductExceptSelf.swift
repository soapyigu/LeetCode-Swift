/**
* Question Link: https://leetcode.com/problems/product-of-array-except-self/
* Primary idea: Use two arrays to hold multiplication result from left and right sides
*               while iterating the original array
* Time Complexity: O(n), Space Complexity: O(1)
*/

class ProductExceptSelf {
	func productExceptSelf(_ nums: [Int]) -> [Int] {
		var zeroCount = 0
		let total = nums.reduce(1) {
			if $1 == 0 {
				zeroCount += 1
			}
			return $0 * ($1 == 0 ? 1 : $1)
		}
		if zeroCount > 1 {return nums.map({_ in return 0})}
		return nums.map({
			if zeroCount == 1 {
				return ($0 == 0 ? total : 0)
			} else {
				return ($0 == 0 ? total : total / $0)
			}
		})
	}
}




/**
* Question Link: https://leetcode.com/problems/product-of-array-except-self/
* Primary idea: Dynamic Programming, track Left and Right product lists at the same time and just use one additional array.The problem statement mentions that using theanswer array doesn't add to the space complexity.
* Time Complexity: O(n), Space Complexity: O(1)
*/


class ProductExceptSelfNotUseDivide{

	func productExceptSelf(_ nums: [Int]) -> [Int] {

		var arr = Array.init(repeating: 1, count: nums.count)

		for i in (0..<(nums.count - 1)).reversed() {

			arr[i] = arr[i + 1] * nums[i + 1]

		}

		var left = 1
		for i in 0..<nums.count {
			if i == 0 {
				arr[i] = left * arr[i]
			} else {
				left = left * nums[i - 1]
				arr[i] = left * arr[i]
			}
		}

		return  arr
	}

}
