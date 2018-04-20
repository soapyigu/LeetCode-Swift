/**
 * Question Link: https://leetcode.com/problems/number-of-islands-ii/
 * Primary idea: Classic Union Find, check four directions and update count every time
 * 
 * Time Complexity: O(klogmn), Space Complexity: O(mn)
 *
 */

class NumberIslandsII {
  func numOfIslandsII(_ m: Int, _ n: Int, _ positions: [(Int, Int)]) -> [Int] {
    var res = [Int](), count = 0, roots = Array(repeating: -1, count: m * n)
    
    for position in positions {
      var pos = position.0 * n + position.1
      roots[pos] = pos
      count += 1
      
      for moveDir in [(0, 1), (0, -1), (1, 0), (-1, 0)] {
        let i = position.0 + moveDir.0, j = position.1 + moveDir.1
        let movePos = i * n + j
        
        guard i >= 0 && i < m && j >= 0 && j < n && roots[movePos] != -1 else {
          continue
        }
        
        let movePosRoot = findRoot(movePos, roots)
        
        if movePosRoot != pos {
          count -= 1
          roots[pos] = movePosRoot
          pos = movePosRoot
        }
      }
      
      res.append(count)
    }
    
    return res
  }

  fileprivate func findRoot(_ node: Int, _ roots: [Int]) -> Int {
    var node = node
    while node != roots[node] {
      node = roots[node]
    }
    return node
  }
}