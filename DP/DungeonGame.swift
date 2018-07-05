/**
 * Question Link: https://leetcode.com/problems/dungeon-game/
 * Primary idea: Classic DP, current minimum health is decided by right and below minimum health 
 * Time Complexity: O(mn), Space Complexity: O(mn)
 */

 class DungeonGame {
    func calculateMinimumHP(_ dungeon: [[Int]]) -> Int {
        let m = dungeon.count, n = dungeon[0].count
        
        guard m > 0, n > 0 else {
            return 1
        }
        
        var minHP = Array(repeating: Array(repeating: 1, count: n), count: m)
        
        for i in (0..<m).reversed() {
            for j in (0..<n).reversed() {
                if i == m - 1 && j == n - 1{
                    minHP[i][j] = max(1, 1 - dungeon[m - 1][n - 1])
                } else if i == m - 1 {
                    minHP[i][j] = max(1, minHP[i][j + 1] - dungeon[i][j])
                } else if j == n - 1 {
                    minHP[i][j] = max(1, minHP[i + 1][j] - dungeon[i][j])
                } else {
                    minHP[i][j] = max(1, min(minHP[i + 1][j], minHP[i][j + 1]) - dungeon[i][j])
                } 
            }
        }
        
        return minHP[0][0]
    }
}
