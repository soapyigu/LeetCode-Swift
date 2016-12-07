/**
 * Question Link: https://leetcode.com/problems/trapping-rain-water/
 * Primary idea: The rain capacity is always determined by the the min value of 
 *               left and right maximum height
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class TrappingRainWater {
    func trap(height: [Int]) -> Int {
        guard height.count > 0 else {
            return 0
        }
        
        var res = 0
        var left = _initMaxHeights(height, true)
        var right = _initMaxHeights(height, false)
        
        for i in 0 ..< height.count {
            res += min(left[i], right[i]) - height[i]
        }
        
        return res
    }
    
    private func _initMaxHeights(height: [Int], _ isLeft: Bool) -> [Int] {
        var res = [Int](count: height.count, repeatedValue: 0)
        var currentMax = 0
        
        if isLeft {
            for i in 0 ..< height.count {
                res[i] = max(currentMax, height[i])
                currentMax = res[i]
            }
        } else {
            for i in (0 ..< height.count).reverse() {
                res[i] = max(currentMax, height[i])
                currentMax = res[i]
            }
        }
        
        return res
    }
}