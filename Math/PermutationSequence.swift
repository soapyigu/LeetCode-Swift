/**
 * Question Link: https://leetcode.com/problems/permutation-sequence/
 * Primary idea: Iterate and change the array from last to the first
 *
 * Time Complexity: O(n^2), Space Complexity: O(1)
 */

class PermutationSequence {
	func getPermutation(_ n: Int, _ k: Int) -> String {
		var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

		var factorial = 1
		for i in 1 ..< n {
			factorial *= i
		}

		var result = ""
		var k = k
		var divisor = n - 1

		for i in 0 ..< n {
			for (index, number) in numbers.enumerated() {
				if k > factorial {
					k -= factorial
				} else {
					result += "\(number)"
					numbers.remove(at: index)
					break
				}
			}
			if divisor > 1 {
				factorial /= divisor
				divisor -= 1
			}
		}

		return result
	}
}