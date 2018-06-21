/**
 * Question Link: https://leetcode.com/problems/string-compression/
 * Primary idea: Compare two consecutive characters, set character at index and count of it afterwards
 * 
 * Note: do not forget to handle edge case when hit the end of array
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class StringCompression {
    func compress(_ chars: inout [Character]) -> Int {
        var index = 0, currentCount = 0
        
        for i in 0..<chars.count {
            currentCount += 1
            
            if i + 1 == chars.count || chars[i] != chars[i + 1] {
                chars[index] = chars[i]
                
                if currentCount != 1 {
                    chars.replaceSubrange(index + 1...currentCount.length + index, with: Array(String(currentCount)))
                }
                
                index += currentCount == 1 ? 1 : 1 + currentCount.length
                currentCount = 0
            }
        }
        
        return index
    }
}

extension Int {
    var length: Int {
        return String(self).count
    }
}