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
        
        let s = Array(s)
        var start = 0, longest = 0, charsFreq = [Character: Int]()
        
        for (i, char) in s.enumerated() {
            if let freq = charsFreq[char] {
                charsFreq[char] = freq + 1
            } else {
                while charsFreq.count == k {
                    longest = max(i - start, longest)
                    
                    guard let freq = charsFreq[s[start]] else {
                        fatalError()
                    }
                    charsFreq[s[start]] = freq == 1 ? nil : freq - 1
                    
                    start += 1
                }
                
                charsFreq[char] = 1
            }
        }
        
        return max(longest, s.count - start)
    }
}