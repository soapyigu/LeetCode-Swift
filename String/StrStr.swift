/**
 * Question Link: https://leetcode.com/problems/implement-strstr/
 * Primary idea: Iterate two strings
 * Time Complexity: O(nm), Space Complexity: O(n)
 */

class StrStr {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let hChars = Array(haystack.characters), nChars = Array(needle.characters)
        let hLen = hChars.count, nLen = nChars.count
    
        guard hLen >= nLen else {
            return -1
        }
        guard nLen != 0 else {
            return 0
        }
        
        for i in 0 ... hLen - nLen {
            if hChars[i] == nChars[0] {
                for j in 0 ..< nLen {
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