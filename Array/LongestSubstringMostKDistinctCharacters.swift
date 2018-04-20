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
        var start = 0, longest = 0, charsFreq = [Character: Int]()
        let sChars = Array(s)
        
        guard k > 0 else {
            return longest
        }
        
        for (i, char) in sChars.enumerated() {
            if let freq = charsFreq[char] {
                charsFreq[char] = freq + 1
            } else {
                if charsFreq.count == k {
                    longest = max(longest, i - start)
                    
                    while charsFreq.count == k {
                        let charStart = sChars[start]
                        charsFreq[charStart]! -= 1
                        
                        if charsFreq[charStart] == 0 {
                            charsFreq[charStart] = nil
                        }
                        
                        start += 1
                    }
                }
                
                charsFreq[char] = 1
            }
        }
        
        return max(longest, s.count - start)
    }
}