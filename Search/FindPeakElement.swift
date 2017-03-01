/**
 * Question Link: https://leetcode.com/problems/find-peak-element/
 * Primary idea: Classic Binary Search  
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class FindPeakElement {
    func findPeakElement(nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return 0
        }
        
        var left = 1
        var right = nums.count - 2
        var mid = 0
        
        while left <= right {
            mid = (right - left) / 2 + left
            if nums[mid] > nums[mid - 1] && nums[mid] > nums[mid + 1] {
                return mid
            } else if nums[mid] < nums[mid + 1] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        if nums[left] >= nums[right] {
            return left
        } else {
            return right
        }
    }
}

// Alternative using switch statement
// returns as soon as a peak is found...with early returns, beats 83% of submissions. 

class Solution {
    func findPeakElement(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        var output: [Int] = []
        
        for index in 0..<nums.count {
            switch index {
            case nums.startIndex:
                if nums[0] > nums[1] {
                    output.append(0)
                    return output[0]
                }
            case nums.endIndex - 1:
                if nums[nums.endIndex - 1] > nums[nums.endIndex - 2] {
                    output.append(index)
                    return output[0]
                }
            default:
                if nums[index] > nums[index - 1] && nums[index] > nums[index + 1] {
                    output.append(index)
                    return output[0]

                }
            }
        }
        
        return output[0]
    }
}
