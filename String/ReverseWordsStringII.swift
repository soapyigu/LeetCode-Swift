/**
 * Question Link: https://leetcode.com/problems/reverse-words-in-a-string-ii/
 * Primary idea: Reverse the whole string, then reverse every word
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class ReverseWordsStringII {
    func reverseWords(_ str: inout [Character]) {
        var last = 0
        
        reverse(&str, 0, str.count - 1)
        
        for i in 0..<str.count {
            if i + 1 == str.count || (str[i] != " " && str[i + 1] == " ") {
                reverse(&str, last, i)
                last = i + 2
            }
        }
    }
    
    fileprivate func reverse<T>(_ array: inout [T], _ startIdx: Int, _ endIdx: Int) {
        var (left, right) = (startIdx, endIdx)
  
        while left < right {
            (array[left], array[right]) = (array[right], array[left])
            left += 1
            right -= 1
        }
    }
}
