/**
 * Question Link: https://leetcode.com/problems/reverse-string-ii/
 * Primary idea: Use reversed() to help reverse the string
 *
 * Note: Avoid index out of range error as k will pass the right edge of the string
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ReverseStringII {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var chars = [Character](s.characters), res = [Character]()
  
        if k < 0 {
            fatalError("Invalid k")
        }
  
        for i in stride(from: 0, to: chars.count, by: 2 * k) {
            print(i)
    
            if chars.count < i + k {
                res += chars[i..<chars.count].reversed()
                break
            }
    
            res += chars[i..<i + k].reversed()
    
            if chars.count < i + 2 * k {
                res += chars[i + k..<chars.count]
                break
            }
    
            res += chars[i + k..<i + 2 * k]
        }
  
        return String(res)
    }
}