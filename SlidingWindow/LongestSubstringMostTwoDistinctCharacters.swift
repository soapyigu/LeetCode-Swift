/**
 * Question Link: https://leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters/
 * Primary idea: Slding window. Use char freq map to check substring is valid or not, and 
 				 note to handle the end of string edge case
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class LongestSubstringMostTwoDistinctCharacters {
    func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
        var charFreqMap = [Character: Int](), left = 0, res = 0
        let s = Array(s)

        for (i, char) in s.enumerated() {
            if let freq = charFreqMap[char] {
                charFreqMap[char] = freq + 1
            } else {
               
                // update res
                res = max(i - left, res)

                // move left and window
                while charFreqMap.count == 2 {
                    if let leftFreq = charFreqMap[s[left]] {
                        charFreqMap[s[left]] = leftFreq == 1 ? nil : leftFreq - 1
                        left += 1
                    } else {
                        fatalError()
                    }
                }

                // update window for current char
                charFreqMap[char] = 1
            }
        }

        return max(res, s.count - left)
    }
}
