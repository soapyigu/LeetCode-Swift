/**
 * Question Link: https://leetcode.com/problems/implement-strstr/
 * Primary idea: Iterate two strings
 * Time Complexity: O(nm), Space Complexity: O(n)
 */

class StrStr {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let hChars = Array(haystack), nChars = Array(needle)
        let hLen = hChars.count, nLen = nChars.count
    
        guard hLen >= nLen else {
            return -1
        }
        guard nLen != 0 else {
            return 0
        }
        
        for i in 0...hLen - nLen {
            if hChars[i] == nChars[0] {
                for j in 0..<nLen {
                    if hChars[i + j] != nChars[j] {
                        break
                    }
                    if j + 1 == nLen {
                        return i
                    }
                }
            } 
        }
        
        return -1
    }
}



class StrStrWithSubstring {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard needle.count > 0 else {
            return 0
        }
        
        guard haystack.count >= needle.count else {
            return -1
        }
        
        let shiftIndex = needle.count - 1
        let maxLowerIndex = haystack.count - needle.count
        
        for lowerIndex in 0...maxLowerIndex {
            let lowerBound: String.Index = haystack.index(haystack.startIndex, offsetBy: lowerIndex)
            let upperBound: String.Index = haystack.index(haystack.startIndex, offsetBy: lowerIndex + shiftIndex)
            
            if haystack[lowerBound...upperBound] == needle {
                return lowerIndex
            }
        }
        
        return -1
    }
}
