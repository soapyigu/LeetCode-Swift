/**
 * Question Link: https://leetcode.com/problems/count-and-say/
 * Primary idea: Recursive iteration, use outer iteration to count times, 
 *               use inner iteration to get the right string for specific index
 * 
 * Note: Swift does not have a way to access a character in a string with O(1), 
 *       thus we have to first transfer the string to a character array
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class CountAndSay {
    func countAndSay(n: Int) -> String {
        guard n > 0 else {
            return ""
        }
  
        var res = "1"
        var temp: String
        var count: Int
        var chars: [Character]
        var current: Character
  
        for _ in 1..<n{
            temp = ""
            count = 1
            chars = [Character](res.characters)
            current = chars[0]
    
            for i in 1..<chars.count {
                if chars[i] == current {
                    count += 1
                } else {
                    temp.append(Character("\(count)"))
                    temp.append(current)
                    count = 1
                    current = chars[i]
                }
            }
            temp.append(Character("\(count)"))
            temp.append(current)
    
            res = temp
        }
  
        return res
    }
}