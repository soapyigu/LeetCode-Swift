/**
 * Question Link: https://leetcode.com/problems/implement-strstr/
 * Primary idea: Iterate two strings
 * Time Complexity: O(nm), Space Complexity: O(n)
 */

class StrStr {
    func strStr(haystack: String, _ needle: String) -> Int {
        var hChars = [Character](haystack.characters)
        var nChars = [Character](needle.characters)
        
        guard hChars.count >= nChars.count else {
            return -1
        }
        if nChars.count == 0 {
            return 0
        }
        
        for i in 0 ... hChars.count - nChars.count {
            guard hChars[i] == nChars[0] else {
                continue
            }
                
            for j in 0 ..< nChars.count {
                guard hChars[i + j] == nChars[j] else {
                    break
                }
                
                if j == nChars.count - 1 {
                    return i
                }
            }
        }
        
        return -1
    }
}