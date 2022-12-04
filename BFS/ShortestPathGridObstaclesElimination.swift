/**
 * Question Link: https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles-elimination/
 * Primary idea: BFS to go over all possible word paths until the end. Choose the path only the remaining elimination number is greater.
 * 
 * Time Complexity: O(nmk), Space Complexity: O(nm)
 */

class ShortestPathGridObstaclesElimination {
    func shortestPath(_ grid: [[Int]], _ k: Int) -> Int {
        let m = grid.count, n = grid[0].count
        var remaining = Array(repeating: Array(repeating: -1, count: n), count: m)
        var queue = [Point(i: 0, j: 0, remain: k)], count = 0
        
        if m + n - 2 < k {
            return m + n - 2
        }
        
        while !queue.isEmpty {
            let size = queue.count
            
            for _ in 0..<size {
                let point = queue.removeFirst()
                
                if point.i == m - 1, point.j == n - 1 {
                    return count
                }
                
                for dir in [[0, 1], [0, -1], [1, 0], [-1, 0]] {
                    let (x, y) = (point.i + dir[0], point.j + dir[1])
                    
                    guard x >= 0 && x < m && y >= 0 && y < n else {
                        continue
                    }
                    
                    if grid[x][y] == 1 && point.remain == 0 {
                        continue
                    }
                    
                    let nextRemaining = grid[x][y] == 1 ? point.remain - 1 : point.remain
                    
                    if remaining[x][y] >= nextRemaining  {
                        continue
                    } 
                    
                    remaining[x][y] = nextRemaining
                    queue.append(Point(i: x, j: y, remain: nextRemaining))

                }
            }
            
            count += 1
        }
        
        return -1
    }
    
    struct Point {
        let i: Int
        let j: Int
        let remain: Int
    }
}