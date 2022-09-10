/**
 * Question Link: https://leetcode.com/problems/license-key-formatting/
 * Primary idea: traverse the array formatted string from end. Insert the dash into the String as per given K, else insert the elements at index 0.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class LicenseKeyFormatting {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        guard S.count > 0 && K > 0 else{
            return ""
        }
        
        let upperCaseString = Array(S.uppercased())
        var result = [Character](), n = K
        
        for i in stride(from: S.count - 1, through: 0, by: -1){
            let aCharacter = upperCaseString[i]
            guard aCharacter != "-" else{
                continue
            }
            
            if n == 0{
                result.insert("-", at: 0)
                n = K
            }
            
            result.insert(aCharacter, at: 0)
            n -= 1
        }
        
        return String(result)
    }
}
