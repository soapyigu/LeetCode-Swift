/**
 * Question Link: https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/
 * Primary idea: Check character frequency in the original string and replace all redundant ones.
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class MinimumStepsMakeTwoStringsAnagram {
    func minSteps(_ s: String, _ t: String) -> Int {
        var tFreq = Dictionary(t.map { ($0, 1) }, uniquingKeysWith: +)
        
        for char in s {
            tFreq[char, default: 0] -= 1
        }
        
        return tFreq.values.filter { $0 > 0 }.reduce(0) { $0 + $1 }
    }
}
