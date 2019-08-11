/**
 * Question Link: https://leetcode.com/problems/longest-common-prefix/
 * Primary idea: Use the first string as the result at first, trim it while iterating the array
 * Time Complexity: O(nm), Space Complexity: O(m), m stands for the length of longest prefix
 */

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstStr = strs.first else {
            return ""
        }
        
        var res = ""
        
        for (i, char) in firstStr.enumerated() {
            // dropFirst(_ k: Int = 1) returns a Substring struct
            for str in strs.dropFirst() {
                if i == str.count {
                    return res
                }
                
                // Another easy way: Array(str)[i], time complexity is linear though
                let currentStrChar = str[str.index(str.startIndex, offsetBy: i)]
                
                if char != currentStrChar {
                    return res
                }
            }
            res.append(char)
        }
        
        return res
    }
}