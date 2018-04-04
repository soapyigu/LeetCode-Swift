/**
 * Question Link: https://leetcode.com/problems/minimum-window-substring/
 * Primary idea: Use dictionary and int to verify if contain all characters, and update 
 *               startIndex and miniWindow as well
 *
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class MinimumWindowSubstring {

    func minWindow(_ s: String, _ t: String) -> String {
        var tFreqs = Dictionary(Array(t).map { ($0, 1) }, uniquingKeysWith: +), count = 0
        var sChars = Array(s), tChars = Array(t), res = "", start = 0
        
        for (i, sChar) in sChars.enumerated() {
            guard let freq = tFreqs[sChar] else {
                continue
            }
            
            tFreqs[sChar] = freq - 1
            
            if freq > 0 {
                count += 1
            }
            
            while count == tChars.count {
                // jump over redundants
                guard let startFreq = tFreqs[sChars[start]] else {
                    start += 1
                    continue
                }
                
                tFreqs[sChars[start]] = startFreq + 1
                
                if startFreq == 0 {
                    // update res
                    if res.isEmpty || res.count > i - start + 1 {
                        res = String(sChars[start...i])
                    }
                    
                    count -= 1
                }
                
                start += 1
                
            }
        }
        
        return res
    }
}