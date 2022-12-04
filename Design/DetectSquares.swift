/**
 * Question Link: https://leetcode.com/problems/detect-squares/
 * Primary idea: Use hashmap to track points having the same x and y and calculate all possible results
 *
 * Time Complexity: add - O(1), count - O(n)
 * Space Complexity: O(n)
 *
 */

class DetectSquares {
    
    private var xPoints = [Int: [Int: Int]]()
    private var yPoints = [Int: [Int: Int]]()

    init() { }
    
    func add(_ point: [Int]) {
        let x = point[0], y = point[1]
        
        xPoints[x, default: [y: 0]][y, default: 0] += 1
        yPoints[y, default: [x: 0]][x, default: 0] += 1
    }
    
    func count(_ point: [Int]) -> Int {
        let x = point[0], y = point[1]
        
        guard let xEqualPoints = xPoints[x], let yEqualPoints = yPoints[y] else {
            return 0
        }
        
        var res = 0
        
        for (yEqualPointX, firstPointsCount) in yEqualPoints {
            if x == yEqualPointX {
                continue
            }
            let sideLength = abs(x - yEqualPointX)
            // check bottom square
			if let secondPointCount = xEqualPoints[y - sideLength] {
				if let thirdPointCount = xPoints[yEqualPointX]?[y - sideLength] {
					res += firstPointsCount * secondPointCount * thirdPointCount
				}
			}
            if let secondPointCount = xEqualPoints[y + sideLength] {
				if let thirdPointCount = xPoints[yEqualPointX]?[y + sideLength] {
					res += firstPointsCount * secondPointCount * thirdPointCount
				}
			}
        }
        
        return res
    }
}

/**
 * Your DetectSquares object will be instantiated and called as such:
 * let obj = DetectSquares()
 * obj.add(point)
 * let ret_2: Int = obj.count(point)
 */
