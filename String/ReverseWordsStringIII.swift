/**
 * Question Link: https://leetcode.com/problems/reverse-words-in-a-string-iii/
 * Primary idea: Check the empty space to get the previous word, then reverse it
 * 
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class ReverseWordsStringIII {
    func reverseWords(_ s: String) -> String {
        var last = 0, str = Array(s)
        
        for i in 0..<str.count {
            if i + 1 == str.count || (str[i] != " " && str[i + 1] == " ") {
                reverse(&str, last, i)
                last = i + 2
            }
        }
        
        return String(str)
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
