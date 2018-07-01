/**
 * Question Link: https://leetcode.com/problems/shortest-distance-to-a-character/
 * Primary idea: Iterate through left and right to get min distance by compared between indices of C at two sides.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class ShortestDistanceToACharacter {
    func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var res = Array(repeating: 0, count: S.count), cIndex = -10000, sChars = Array(S)
        
        for (i, sChar) in sChars.enumerated() {
            if sChar == C {
                cIndex = i
            }
            
            res[i] = i - cIndex
        }
        
        cIndex = -10000
        
        for i in (0..<sChars.count).reversed() {
            let currentChar = sChars[i]
            
            if currentChar == C {
                cIndex = i
            }
            
            res[i] = min(res[i], abs(cIndex - i))
        }
        
        return res
    }
}