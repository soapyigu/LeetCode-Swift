/**
 * Question Link: https://leetcode.com/problems/3sum-closest/
 * Primary idea: Sort the array, and iterate through it while updating the diff, 
 * 				 increment left or decrease right predicated on
 *               their sum is greater or less than the target
 * Time Complexity: O(n^2), Space Complexity: O(nC3)
 */

 class ThreeSumClosest {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var minDiff = Int.max
  
        let nums = nums.sorted()
  
        for i in 0 ..< nums.count - 2 {
            if i == 0 || nums[i] != nums[i - 1] {
                let twoSum = target - nums[i]
                var left = i + 1
                var right = nums.count - 1
      
                while left < right {
                    let diff = nums[left] + nums[right] - twoSum
        
                    if abs(diff) < abs(minDiff) {
                        minDiff = diff
                    }
        
                    if diff == 0 {
                        return target
                    } else if diff > 0 {
                        repeat {
                            right -= 1
                        } while left < right && nums[right] == nums[right + 1]
                    } else {
                        repeat {
                            left += 1
                        } while left < right && nums[left] == nums[left - 1]
                    }
                }
            }
        }
        
        return target + minDiff
    }
}