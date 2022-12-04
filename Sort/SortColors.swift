/**
 * Question Link: https://leetcode.com/problems/sort-colors/
 * Primary idea: Bucket sort
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class SortColors {
    func sortColors(_ nums: inout [Int]) {
        var redIdx = 0, blueIdx = nums.count - 1, currentIdx = 0
        
        while currentIdx <= blueIdx {
            let num = nums[currentIdx]
            
            if num == 0 {
                swap(&nums, redIdx, currentIdx)
                redIdx += 1
            } else if num == 2 {
                swap(&nums, currentIdx, blueIdx)
                blueIdx -= 1
                currentIdx -= 1
            }
            
            currentIdx += 1
        }
    }
    
    private func swap(_ nums: inout [Int], _ left: Int, _ right: Int) {
        (nums[left], nums[right]) = (nums[right], nums[left])
    }
}
