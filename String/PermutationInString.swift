/**
 * Question Link: https://leetcode.com/problems/permutation-in-string/
 * Primary idea: Iterate through s2 and scan the length of s1 to check whether the 
 * 				 substring of s2 and s1 are permutation by 
 *				 comparing the characters' number of two strings.
 *
 * Time Complexity: O(nm), Space Complexity: O(n)
 *
 */

class PermutationInString{
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var s1charsFreq = Dictionary(s1.map { ($0, 1) }, uniquingKeysWith: +), mattersCount = 0
        let s2 = Array(s2)

        for i in 0..<s2.count {
            if i >= s1.count {
                let leftChar = s2[i - s1.count]
                
                if let freq = s1charsFreq[leftChar] {
                    s1charsFreq[leftChar] = freq + 1
                    
                    if freq >= 0 {
                        mattersCount -= 1
                    }
                }
            }
            
            if let freq = s1charsFreq[s2[i]] {
                s1charsFreq[s2[i]] = freq - 1
                
                if freq > 0 {
                    mattersCount += 1
                }
            } 
            
            if mattersCount == s1.count {
                return true
            }
        }
        
        return false
    }
}