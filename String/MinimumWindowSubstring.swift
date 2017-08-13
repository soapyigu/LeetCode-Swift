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
        let sChars = Array(s.characters)
        let sLen = sChars.count
        let tLen = t.characters.count
    
        guard sLen >= tLen else {
            return ""
        }
    
        var freqencyDict = calcCharFrec(t)
        var startIndex = 0
        var minLen = Int.max
        var count = 0
        var res = ""
        
        for (i, current) in sChars.enumerated() {
            guard freqencyDict[current] != nil else {
                continue
            }
            
            // update freqency dictionary
            freqencyDict[current]! -= 1
            if freqencyDict[current]! >= 0 {
                count += 1
            }
            
            // update startIndex
            while count == tLen {
                let startChar = sChars[startIndex]
            
                guard freqencyDict[startChar] != nil else {
                    startIndex += 1
                    continue
                }
                
                freqencyDict[startChar]! += 1
                if freqencyDict[startChar]! > 0 {
                    // update res
                    if i - startIndex + 1 < minLen {
                        res = String(sChars[startIndex...i])
                        minLen = i - startIndex + 1
                    }
                    count -= 1
                }
                startIndex += 1
            }
        }
        
        return res
    }
    
    private func calcCharFrec(_ t: String) -> [Character: Int] {
        var dict = [Character: Int]()
    
        for char in t.characters {
            if let freq = dict[char] {
                dict[char] = freq + 1
            } else {
                dict[char] = 1
            }
        }
        
        return dict
    }
}