/**
 * Question Link: https://leetcode.com/problems/reverse-words-in-a-string/
 * Primary idea: Trim and split the original string to a string array, 
 * 				 reverse it and then join strings in the array to a single one.
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ReverseWordsString {
	func reverseWords(_ s: String) -> String {
	  	return s.split(separator: " ").reversed().joined(separator: " ")
	}
}
