/**
 * Question Link: https://leetcode.com/problems/bomb-enemy/
 * Primary idea: Greedy. Update the result only when there is wall or at the beginning.
 * Time Complexity: O(mn), Space Complexity: O(n)
 *
 */

class BombEnemy {
    func maxKilledEnemies(_ grid: [[Character]]) -> Int {
        let m = grid.count, n = grid[0].count
        var res = 0, rowHit = 0, colHit = Array(repeating: 0, count: n)

        for i in 0..<m {
            for j in 0..<n {

                // check row
                if j == 0 || grid[i][j - 1] == "W" {
                    rowHit = 0
                    for y in j..<n {
                        if grid[i][y] == "W" {
                            break
                        }
                        if grid[i][y] == "E" {
                            rowHit += 1
                        }
                    }
                }

                // check col
                if i == 0 || grid[i - 1][j] == "W" {
                    colHit[j] = 0
                    for x in i..<m {
                        if grid[x][j] == "W" {
                            break
                        }
                        if grid[x][j] == "E" {
                            colHit[j] += 1
                        }
                    }
                }
            
                if grid[i][j] == "0" {
                    res = max(res, rowHit + colHit[j])
                }
            }
        }

        return res
    }
}
