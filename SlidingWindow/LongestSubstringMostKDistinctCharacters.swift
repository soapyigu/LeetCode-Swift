/**
 * Question Link: https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters/
 * Primary idea: Slding window, use dictionary to check substring is valid or not, and 
                 note to handle the end of string edge case
 *
 * Note: k may be invalid, mention that with interviewer
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class LongestSubstringMostKDistinctCharacters {
    func lengthOfLongestSubstringKDistinct(_ s: String, _ k: Int) -> Int {
        guard k > 0 else {
            return 0
        }

        var charFreqMap = [Character: Int](), left = 0, res = 0
        let s = Array(s)

        for (i, char) in s.enumerated() {
            if let freq = charFreqMap[char] {
                charFreqMap[char] = freq + 1
            } else {
               
                // update res
                res = max(i - left, res)

                // move left and window
                while charFreqMap.count == k {
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
