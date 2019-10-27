/**
 * Question Link: https://leetcode.com/problems/multiply-strings/
 * Primary idea: reverse two strings and multiply them use nested loop by every digit,
 *               then use sum && carry idea to get the final result
 * 
 * Note: do not forget to remove leading 0 afterwards
 *
 * Time Complexity: O(nm), Space Complexity: O(n)
 *
 */


class MultiplyStrings {
    func multiply(_ num1: String, _ num2: String) -> String {
        let num1 = num1.reversed(), num2 = num2.reversed()
        var res = Array(repeating: 0, count: num1.count + num2.count), resStr = ""
        
        // calculate product for every digit
        for (i, char1) in num1.enumerated() {
            
            guard let digit1 = Int(String(char1)) else {
                fatalError("Invalid Input num1")
            }
            
            for (j, char2) in num2.enumerated() {
                guard let digit2 = Int(String(char2)) else {
                    fatalError("Invalid Input num2")
                }
                
                res[i + j] += digit1 * digit2
            }
        }
        
        // update digits
        for i in 0..<res.count {
            let num = res[i]
            
            res[i] = num % 10
            if i < res.count - 1 {
                res[i + 1] += num / 10
            }
            
            resStr = "\(res[i])" + resStr
        }
        
        // trim starting 0s
        while !resStr.isEmpty && resStr.first! == "0" {
            resStr.removeFirst()
        }
        
        return resStr.isEmpty ? "0" : resStr
    }
}
