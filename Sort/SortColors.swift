/**
 * Question Link: https://leetcode.com/problems/sort-colors/
 * Primary idea: Bucket sort
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class SortColors {
    func sortColors(_ nums: inout [Int]) {
        var red = 0, blue = nums.count - 1, i = 0
        
        while i <= blue {
            if nums[i] == 0 {
                _swap(&nums, i, red)
                red += 1
                i += 1
            } else if nums[i] == 1 {
                i += 1
            } else {
                _swap(&nums, i, blue)
                blue -= 1
            }
        }
    }
    
    fileprivate func _swap<T>(_ nums: inout [T], _ p: Int, _ q: Int) {
        (nums[p], nums[q]) = (nums[q], nums[p])
    }
}

class SortColorsWithFilter {
    func sortColors(_ nums: inout [Int]) {
        enum Color: Int {
            case red = 0
            case white = 1
            case blue = 2
        }
        
        let red = nums.filter({$0 == Color.red.rawValue})
        let white = nums.filter({$0 == Color.white.rawValue})
        let blue = nums.filter({$0 == Color.blue.rawValue})
        
        nums = red + white + blue
    }
}
