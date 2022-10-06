/**
 * Question Link: https://leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters/
 * Primary idea: Slding window, use dictionary to check substring is valid or not, and 
 				 note to handle the end of string edge case
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class LongestSubstringMostTwoDistinctCharacters {
    func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
        var start = 0, longest = 0, charFreq = [Character: Int]()
        let sChars = Array(s)
        
        for (i, char) in sChars.enumerated() {
            if let freq = charFreq[char] {
                charFreq[char] = freq + 1
            } else {
               if charFreq.count == 2 {
                    longest = max(longest, i - start)
                    
                    while charFreq.count == 2 {
                        let charStart = sChars[start]
                        charFreq[charStart]! -= 1
                        
                        if charFreq[charStart] == 0 {
                            charFreq[charStart] = nil
                        }
                        
                        start += 1
                    }   
                }
                
                charFreq[char] = 1
            }
        }
        
        return max(longest, sChars.count - start)
    }
}