/**
 * Question Link: https://leetcode.com/problems/longest-common-prefix/
 * Primary idea: Use the first string as the result at first, trim it while iterating the array
 * Time Complexity: O(nm), Space Complexity: O(m), m stands for the length of first string
 */

class LongestCommonPrefix {
    func longestCommonPrefix(strs: [String]) -> String {
        guard strs.count > 0 else {
            return ""
        }
    
        var res = [Character](strs[0].characters)
        
        for str in strs {
            var strContent = [Character](str.characters)
            
            if res.count > strContent.count {
                res = Array(res[0..<strContent.count])
            }
            
            for i in 0..<res.count {
                if res[i] != strContent[i] {
                    res = Array(res[0..<i])
                    break
                }
            }
        }
        
        return String(res)
    }
}