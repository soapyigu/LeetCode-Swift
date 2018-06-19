/**
 * Question Link: https://leetcode.com/problems/longest-common-prefix/
 * Primary idea: Use the first string as the result at first, trim it while iterating the array
 * Time Complexity: O(nm), Space Complexity: O(m), m stands for the length of longest prefix
 */

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var longestPrefix = [Character](), index = 0
        
        guard let firstStr = strs.first else {
            return String(longestPrefix)
        }
        
        let firstStrChars = Array(firstStr)
        let strsChars = strs.map { Array($0) }
        
        while index < firstStr.count {
            
            longestPrefix.append(firstStrChars[index])
            
            for str in strsChars {
                if index >= str.count {
                    return String(longestPrefix.dropLast())
                }
                
                if str[index] != longestPrefix[index] {
                    return String(longestPrefix.dropLast())
                }
            }
            
            index += 1
        }
        
        return String(longestPrefix)
    }
}