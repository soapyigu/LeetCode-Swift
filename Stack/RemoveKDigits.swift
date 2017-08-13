/**
 * Question Link: https://leetcode.com/problems/remove-k-digits/
 * Primary idea: Keep a stack to ensure its numbers are ascending so that the number 
 *               is the smallest, truncate it to right size and handle edge cases
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class RemoveKDigits {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        var res = [Character](), k = k
        let numChars = String(num).characters, size = numChars.count - k
        
        for char in numChars {
            while k > 0 && res.count > 0 && charToInt(res.last!) > charToInt(char) {
                res.removeLast()
                k -= 1
            }
            res.append(char)
        }
        
        res = Array(res[0..<size])
        for char in res {
            if char != "0" {
                break
            } else {
                res.removeFirst()
            }
        }

        return res.isEmpty ? "0" : String(res)
    }
    
    private func charToInt(_ c: Character) -> Int {
        return Int(String(c))!
    }
}