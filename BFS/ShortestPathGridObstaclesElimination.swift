/**
 * Question Link: https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles-elimination/
 * Primary idea: BFS to go over all possible word paths until the end. Choose the path only the remaining elimination number is greater.
 * 
 * Time Complexity: O(nmk), Space Complexity: O(nm)
 */

class ShortestPathGridObstaclesElimination {
    func shortestPath(_ grid: [[Int]], _ k: Int) -> Int {
        let m = grid.count, n = grid[0].count
        var remainings = Array(repeating: Array(repeating: -1, count: n), count: m)
        
        remainings[0][0] = k
        var queue = [Point(i: 0, j: 0, remain: k)]
        var count = 0
        
        if k > m + n - 2 {
            return m + n - 2;
        }
        
        while !queue.isEmpty {
            
            let currentPoints = queue
            queue.removeAll()
            
            for point in currentPoints {
                if point.i == m - 1 && point.j == n - 1 {
                    return count
                }
            
                for dir in [(0, 1), (0, -1), (1, 0), (-1, 0)] {
                    let (x, y) = (point.i + dir.0, point.j + dir.1)
                
                    guard x >= 0 && x < m && y >= 0 && y < n else {
                        continue
                    }
                
                    if grid[x][y] == 1 && point.remain <= 0 {
                        continue
                    }
                    
                    let remain = grid[x][y] == 1 ? point.remain - 1 : point.remain
                    // only choose the path if remainings are greater
                    if remainings[x][y] >= remain {
                        continue
                    }
                    
                    remainings[x][y] = remain
                    queue.append(Point(i: x, j: y, remain: remain))
                }
            }
            count += 1
        }
        
        return -1
    }
    
    struct Point {
        var i: Int
        var j: Int
        var remain: Int
    }
}