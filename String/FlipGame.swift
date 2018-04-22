/**
 * Question Link: https://leetcode.com/problems/flip-game/
 * Primary idea: Iterate the string and change all "++" to "--"
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class FlipGame {
    func generatePossibleNextMoves(_ s: String) -> [String] {
        var res = [String]()
        let sChars = Array(s)
        
        guard sChars.count > 1 else {
            return res
        }
        
        for i in 0..<sChars.count - 1 {
            if sChars[i] == "+" && sChars[i + 1] == "+" {
                res.append(String(sChars[0..<i] + "--" + sChars[i + 2..<sChars.count]))
            }
        }
        
        return res
    }
}