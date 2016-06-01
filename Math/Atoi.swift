/**
 * Question Link: https://leetcode.com/problems/string-to-integer-atoi/
 * Primary idea: Trim, positive and negative, integer overflow, is character digit
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class Atoi {
    func myAtoi(str: String) -> Int {
        var res = 0
        var flag = 1
        var index = 0
        let int_max = 2147483647
        let int_min = -2147483648
        
        // trim
        let content = [Character](str.characters)
        while index < content.count {
            guard content[index] == " " else {
                break
            }
            index += 1
        }
        guard index < content.count else {
            return res
        }
        
        // handle flag
        if content[index] == "-" {
            flag = -1
            index += 1
        } else if content[index] == "+" {
            index += 1
        }
        
        while index < content.count {
            guard _isDigit(content[index]) else {
                break
            }
            
            res = res * 10 + Int(String(content[index]))!
            
            if res >= int_max {
                if flag == 1 {
                    return int_max
                } else if res > int_max && flag == -1 {
                    return int_min
                }
            }
        
            index += 1
        }
        
        return flag * res
    }
    
    private func _isDigit(char: Character) -> Bool {
        return char >= "0" && char <= "9"
    }
}