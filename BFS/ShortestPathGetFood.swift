/**
 * Question Link: https://leetcode.com/problems/shortest-path-to-get-food/
 * Primary idea: BFS to go over all possible word paths until the cell is food, avoid hitting the obstacle.
 * 
 * Time Complexity: O(nm), Space Complexity: O(nm)
 */

class ShortestPathGetFood {
    func getFood(_ grid: [[Character]]) -> Int {
        let m = grid.count, n = grid[0].count
        var isVisited = Array(repeating: Array(repeating: false, count: n), count: m)
        
        let start = findStart(grid)
        
        isVisited[start.0][start.1] = true
        var queue = [(start.0, start.1)], count = 0
        
        while !queue.isEmpty {
            
            let size = queue.count 
            
            for _ in 0..<size {
                let point = queue.removeFirst()

                if grid[point.0][point.1] == "#" {
                    return count
                }

                for dir in [(0, 1), (0, -1), (1, 0), (-1, 0)] {
                    let (x, y) = (point.0 + dir.0, point.1 + dir.1)

                    guard x >= 0 && x < m && y >= 0 && y < n && !isVisited[x][y] else {
                        continue
                    }

                    if grid[x][y] == "X" {
                        continue
                    }

                    isVisited[x][y] = true
                    queue.append((x, y))
                }
            }
            
            count += 1
        }
        
        return -1
    }
    
    private func findStart(_ grid: [[Character]]) -> (Int, Int) {
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == "*" {
                    return (i, j)
                }
            }
        }
        
        return (-1, -1)
    }
}
