/**
 * Question Link: https://leetcode.com/problems/search-a-2d-matrix/
 * Primary idea: Search col and then binary search row
 *
 * Time Complexity: O(log(m + n), Space Complexity: O(1)
 */

class Search2DMatrix {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0 || matrix[0].count == 0 {
            return false
        }
        
        let rowNum = searchRow(matrix, target)
        return searchCol(matrix[rowNum], target)
    }
    
    private func searchRow(_ matrix: [[Int]], _ target: Int) -> Int {
        var left = 0, right = matrix.count - 1
        
        while left + 1 < right {
            let mid = (right - left) / 2 + left
            if matrix[mid][0] == target {
                return mid
            } else if matrix[mid][0] < target {
                left = mid
            } else {
                right = mid
            }
        }
        
        return matrix[right][0] <= target ? right : left
    }
    
    private func searchCol(_ nums: [Int], _ target: Int) -> Bool {
        var left = 0, right = nums.count - 1
        
        while left <= right {
            let mid = (right - left) / 2 + left
            if nums[mid] == target {
                return true
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return false
    }
}