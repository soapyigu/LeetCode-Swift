/**
 * Question Link: https://leetcode.com/problems/robot-bounded-in-circle/
 * Primary idea: If facing north after a loop, then it has to be at the origin to form a circle; other directions can always form a circle after 4 loops.
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class RobotBoundedCircle {
    func isRobotBounded(_ instructions: String) -> Bool {
        // north = 0, west = 1, south = 2, east = 3
        let directions = [[0, 1], [-1, 0], [0, -1], [1, 0]]
        
        var x = 0, y = 0, idx = 0
        
        for step in instructions {
            if step == "L" {
                idx = (idx + 1) % 4
            } else if step == "R" {
                idx = (idx + 3) % 4
            } else {
                x += directions[idx][0]
                y += directions[idx][1]
            }
        }
        
        return (x == 0 && y == 0) || idx != 0
    }
}
