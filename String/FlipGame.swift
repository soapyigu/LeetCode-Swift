/**
 * Question Link: https://leetcode.com/problems/flip-game/
 * Primary idea: Iterate the string and change all "++" to "--"
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class FlipGame {
    func generatePossibleNextMoves(s: String) -> [String] {
        var res = [String]()
        var sChars = Array(s.characters)
        
        guard sChars.count > 1 else {
            return res
        }
        
        for i in 0..<sChars.count - 1 {
            if sChars[i] == "+" && sChars[i + 1] == "+" {
                var temp = sChars
                (temp[i], temp[i + 1])  = ("-", "-")
                res.append(String(temp))
            }
        }
        
        return res
    }
}