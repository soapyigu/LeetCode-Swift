/**
 * Question Link: https://leetcode.com/problems/4sum/
 * Primary idea: Sort the array, and traverse it, increment left or decrease right 
 *               predicated on their sum is greater or not than the target
 * Time Complexity: O(n^3), Space Complexity: O(nC4)
 */

class FourSum {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        let nums = nums.sorted(by: <)
        var threeSum = 0
        var twoSum = 0
        var left = 0
        var right = 0
        var res = [[Int]]()
        
        guard nums.count >= 4 else {
            return res
        }
        
        for i in 0..<nums.count - 3 {
            guard i == 0 || nums[i] != nums[i - 1] else {
                continue
            }
            threeSum = target - nums[i]
            
            for j in i + 1..<nums.count - 2 {
                guard j == i + 1 || nums[j] != nums[j - 1] else {
                    continue
                }
                twoSum = threeSum - nums[j]
                
                left = j + 1
                right = nums.count - 1
                while left < right {
                    if nums[left] + nums[right] == twoSum {
                        res.append([nums[i], nums[j], nums[left], nums[right]])
                        repeat {
                            left += 1
                        } while left < right && nums[left] == nums[left - 1]
                            repeat {
                                right -= 1
                        } while left < right && nums[right] == nums[right + 1]
                    } else if nums[left] + nums[right] < twoSum {
                        repeat {
                            left += 1
                        } while left < right && nums[left] == nums[left - 1]
                    } else {
                        repeat {
                            right -= 1
                        } while left < right && nums[right] == nums[right + 1]
                    }
                }
            }
        }
                
        return res
    }
}