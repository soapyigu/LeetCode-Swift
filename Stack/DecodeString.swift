/**
 * Question Link: https://leetcode.com/problems/decode-string/
 * Primary idea: Primary idea is to maintain two stacks[i.e. countStack and characterStack].
 *               Traverse the given string and process the elements into the respective stacks, and accordingly update the result.
 * Time Complexity: O(n), Space Complexity: O(n)
 * 
 */


class Solution {
    func decodeString(_ s: String) -> String {
        var result = ""
        var countStack = [Int]()
        var characterStack = [String]()
        let allowedDigits = Set(["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"])
        var arrayString = Array(s), i = 0
        
        while i < arrayString.count{
            
            if allowedDigits.contains(String(arrayString[i])){
                
                var count = 0
                while allowedDigits.contains(String(arrayString[i])){
                    count = 10 * count + Int(String(arrayString[i]))!
                    i += 1
                }
                countStack.append(count)
            }else if arrayString[i] == "["{
                
                characterStack.append(result)
                result = ""
                i += 1
            }else if arrayString[i] == "]"{
                
                if var temp = characterStack.popLast(), let repeatTime = countStack.popLast(){
                    
                    for _ in 0..<repeatTime{
                        temp.append(result)
                    }
                    result = temp
                }
                i += 1
            }else{
                
                result.append(arrayString[i])
                i += 1
            }
        }
        
        return result
    }
}
