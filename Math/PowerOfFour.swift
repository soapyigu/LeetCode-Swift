/**
 * Question Link: https://leetcode.com/problems/power-of-four/
 * Primary idea: n must be a power of 2 and count of zero bits before the (only) set bit is even.
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class PowerOfFour {
	func isPowerOfFour(_ n: Int) -> Bool {
		guard n > 0 else {
			return false
		}

		let isPowerOfTwo = (n & (n - 1) == 0)

		guard isPowerOfTwo else {
			return false
		}

		var numberOfZeros = 0
		var n = n

		while n != 1 {
			n = n >> 1
			numberOfZeros += 1
		}

		return numberOfZeros % 2 == 0
	}
}
