/**
 * Question Link: https://leetcode.com/problems/find-all-anagrams-in-a-string/
 * Primary idea: Use a dictionary to store characters with frequencies, 
 *               then compare p and them to determine if they are anagrams
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class FindAllAnagramsInAString {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var res = [Int]()
        let s = Array(s)
        
        guard s.count >= p.count else {
            return res
        }
        
        let pCharsFreq = Dictionary(p.map { ($0, 1) }, uniquingKeysWith: +)
        var sCharsFreq = Dictionary(s[0..<p.count].map { ($0, 1)}, uniquingKeysWith: +)
        
        for (i, char) in s.enumerated() {    
            // check weather they are anagrams
            if sCharsFreq == pCharsFreq {
                res.append(i)
            }
            
            guard i + p.count < s.count else {
                break
            }
            
            // update the sliding window
            if let freq = sCharsFreq[char] {
                sCharsFreq[char] = freq - 1
                
                if sCharsFreq[char] == 0 {
                    sCharsFreq[char] = nil
                }
                
                sCharsFreq[s[i + p.count], default: 0] += 1
            }
        }
        
        return res
    }
}
