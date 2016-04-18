/**
 * Question Link: https://leetcode.com/problems/two-sum/
 * Primary idea: Traverse the array and store target - nums[i] in a dict
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TwoSum {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        var dict = [Int: Int]()
        
        for i in 0...nums.count - 1 {
            guard let lastIndex = dict[target - nums[i]] else {
                dict[nums[i]] = i
                continue
            }
            
            res.append(lastIndex)
            res.append(i)
        }
        
        return res
    }
}