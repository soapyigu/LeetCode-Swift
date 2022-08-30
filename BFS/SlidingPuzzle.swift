/**
 * Question Link: https://leetcode.com/problems/sliding-puzzle/
 * Primary idea: BFS to go over 4 directions until the board meets the requirement. 
 *               Please make sure to keep a global set to store visited board.
 * 
 * Time Complexity: O(mn*(mn)!), Space Complexity: O(mn*(mn)!)
 *                  m stands for row num, n stands for col num
 *
 */

class SlidingPuzzle {
    private let m = 2
    private let n = 3
    private let expectedBoard = [[1,2,3],[4,5,0]]
    
    func slidingPuzzle(_ board: [[Int]]) -> Int {
        // find start point
        let startPoint = findStart(board)
        var queue = [ZeroNode(i: startPoint.0,
                              j: startPoint.1,
                              board: board,
                              step: 0)]

        var isVisited = Set<[[Int]]>()

        while !queue.isEmpty {
            let current = queue.removeFirst()

            if current.board == expectedBoard {
                return current.step
            }

            isVisited.insert(current.board)

            for dir in [(0, 1), (0, -1), (1, 0), (-1, 0)] {
                let (x, y) = (current.i + dir.0, current.j + dir.1)

                guard x >= 0 && x < m && y >= 0 && y < n else {
                    continue
                }

                var board = current.board
                swap(&board, (x, y), (current.i, current.j))

                if isVisited.contains(board) {
                    continue
                }

                queue.append(ZeroNode(i: x,
                                      j: y,
                                      board: board,
                                      step: current.step + 1))
            }
        }

        return -1
    }

    private func swap(_ board: inout [[Int]], _ pointA: (Int, Int), _ pointB: (Int, Int)) {
        (board[pointA.0][pointA.1], board[pointB.0][pointB.1]) = (board[pointB.0][pointB.1], board[pointA.0][pointA.1])
    }

    private func findStart(_ board: [[Int]]) -> (Int, Int) {
        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == 0 {
                    return (i, j)
                }
            }
        }

        return (-1, -1)
    }

    struct ZeroNode {
        var i: Int
        var j: Int
        var board: [[Int]]
        var step: Int
    }
}