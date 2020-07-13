/**
 * Question Link: https://leetcode.com/problems/line-reflection/
 * Primary idea: Find a Line that should be y = (minX + maxX) / 2, then iterate through points and make sure that it has a reflected point in the opposite side.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

 class LineReflection {
    func isReflected(_ points: [[Int]]) -> Bool {
        var minX = Int.max, maxX = Int.min
        var pointSet = Set<[Int]>()
        
        for point in points {
            pointSet.insert(point)
            minX = min(point[0], minX)
            maxX = max(point[0], maxX)
        }
        
        let sum = minX + maxX
        
        for item in pointSet {
            if item[0] == sum {
                continue
            }
            
            if !pointSet.contains([sum - item[0], item[1]]) {
                return false
            }
        }
        
        return true
    }
}