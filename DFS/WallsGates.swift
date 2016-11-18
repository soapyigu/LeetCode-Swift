/**
 * Question Link: https://leetcode.com/problems/walls-and-gates/
 * Primary idea: Classic Depth-first Search, go up, down, left, right four directions
 * 
 * Note: Start from gate to ease complexity, update distance correspondingly
 * Time Complexity: O(mn), Space Complexity: O(1)
 *
 */

class WallsGates {
    func wallsAndGates(_ rooms: inout [[Int]]) {
        guard rooms.count > 0 && rooms[0].count > 0 else {
            return
        }
        
        let m = rooms.count
        let n = rooms[0].count
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                if rooms[i][j] == 0 {
                    dfs(&rooms, i, j, m, n, 0)
                }
            }
        }
    }
    
    func dfs(_ rooms: inout [[Int]], _ i: Int, _ j: Int, _ m: Int, _ n: Int, _ distance: Int) {
        guard i >= 0 && i < m && j >= 0 && j < n else {
            return
        }
        
        if distance == 0 || distance < rooms[i][j] {
            rooms[i][j] = distance
            dfs(&rooms, i + 1, j, m, n, distance + 1)
            dfs(&rooms, i - 1, j, m, n, distance + 1)
            dfs(&rooms, i, j + 1, m, n, distance + 1)
            dfs(&rooms, i, j - 1, m, n, distance + 1)
        }
    }
}