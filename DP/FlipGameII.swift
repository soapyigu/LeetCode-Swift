/**
 * Question Link: https://leetcode.com/problems/flip-game-ii/
 * Primary idea: Classic DP, using a map to memorize previous step
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class FlipGameII {
    func canWin(_ s: String) -> Bool {
        var winMap = [String: Bool]()
        
        return helper(s, &winMap)
    }
    
    func helper(_ s: String, _ winMap: inout [String: Bool]) -> Bool {
        guard s.count >= 2 else {
            return false
        }
        
        if let sWin = winMap[s] {
            return sWin
        }
        
        let sChars = Array(s)
        
        for i in 0..<sChars.count - 1 {
            guard sChars[i] == sChars[i + 1] && sChars[i] == "+" else {
                continue
            }
            
            if !helper(String(sChars[0..<i] + "--" + sChars[i + 2..<sChars.count]), &winMap) {
                winMap[s] = true
                return true
            }
        }
        
        winMap[s] = false
        return false
    }
}