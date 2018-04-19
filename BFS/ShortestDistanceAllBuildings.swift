/**
 * Question Link: https://leetcode.com/problems/shortest-distance-from-all-buildings
 * Primary idea: Use BFS to caculate distance from building to all valid points, and 
 *               then figuare out the smallest one of all candidates
 * 
 * Time Complexity: O((mn)^2), Space Complexity: O(mn)
 *
 */

class ShortestDistanceAllBuildings {
    func shortestDistance(_ grid: [[Int]]) -> Int {
        guard grid.count > 0 && grid[0].count > 0 else {
            return -1
        }
        
        let m = grid.count, n = grid[0].count
        var distances = Array(repeating: Array(repeating: 0, count: n), count: m), reachableNums = Array(repeating: Array(repeating: 0, count: n), count: m)
        var shortestDistance = Int.max, buildingNums = 0
        
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 1 {
                    buildingNums += 1
                    bfs(grid, &distances, &reachableNums, i, j)
                }
            }
        }
        
       for i in 0..<m {
            for j in 0..<n {
                if reachableNums[i][j] == buildingNums {
                    shortestDistance = min(shortestDistance, distances[i][j])
                }
            }
        }
        
        return shortestDistance == Int.max ? -1 : shortestDistance
    }
    
    fileprivate func bfs(_ grid: [[Int]], _ distances: inout [[Int]], _ reachableNums: inout [[Int]], _ i: Int, _ j: Int) {
        let m = grid.count, n = grid[0].count
        var pointsQueue = [(i, j)], distancesQueue = [0]
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)
        
        while !pointsQueue.isEmpty {
            let currentPoint = pointsQueue.removeFirst(), x = currentPoint.0, y = currentPoint.1
            let currentDistance = distancesQueue.removeFirst()
            let ranges = [(x + 1, y), (x - 1, y), (x, y + 1), (x, y - 1)]
            
            // set distances and reachableNums
            if grid[x][y] == 0 {
                distances[x][y] += currentDistance
                reachableNums[x][y] += 1
            } 
            
            // search neighbors
            for range in ranges {
                let xx = range.0, yy = range.1
                
                guard xx >= 0 && xx < m && yy >= 0 && yy < n && !visited[xx][yy] else {
                    continue
                }
                
                guard grid[xx][yy] == 0 else {
                    continue
                }
                
                visited[xx][yy] = true
                pointsQueue.append((xx, yy))
                distancesQueue.append(currentDistance + 1)
            }
        }
    }
}