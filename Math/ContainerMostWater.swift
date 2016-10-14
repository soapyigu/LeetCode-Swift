/**
 * Question Link: https://leetcode.com/problems/container-with-most-water/
 * Primary idea: First given largest width, then go to height-increase direction while width decreases
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class ContainerMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var maxRes = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let minHeight = min(height[left], height[right])
        
            maxRes = max(maxRes, (right - left) * minHeight)
            
            if minHeight == height[left] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return maxRes
    }
}