/**
 * Question Link: https://leetcode.com/problems/reverse-words-in-a-string/
 * Primary idea: Trim and split the original string, add word from end to start
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ReverseWordsString {
	func reverseWords(_ s: String) -> String {
	  	return String(s.split(separator: " ").reversed().reduce("") { total, word in total + word + " "}.dropLast())
	}
}
