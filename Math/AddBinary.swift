/**
 * Question Link: https://leetcode.com/problems/add-binary/
 * Primary idea: use Carry and iterate from last to start
 * 
 * Note: Swift does not have a way to access a character in a string with O(1), 
 *       thus we have to first transfer the string to a character array
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class AddBinary {
    func addBinary(a: String, _ b: String) -> String {
        var res = ""
        var aChars = [Character](a.characters)
        var bChars = [Character](b.characters)
        
        var i = aChars.count - 1
        var j = bChars.count - 1
        var carry = 0
        var num = 0
        
        while i >= 0 || j >= 0 || carry > 0 {
            num = carry
            
            if i >= 0 {
                num += Int(String(aChars[i]))!
                i -= 1
            }
            if j >= 0 {
                num += Int(String(bChars[j]))!
                j -= 1
            }
            
            carry = num / 2
            num = num % 2
            
            res = String(num) + res
        }
        
        return res
    }
}