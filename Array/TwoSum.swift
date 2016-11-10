/**
 * Question Link: https://leetcode.com/problems/two-sum/
 * Primary idea: Traverse the array and store target - nums[i] in a dict
 *
 * Time Complexity: O(n), Space Complexity: O(nC2)
 */

class TwoSum {
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        var dict = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            guard let lastIndex = dict[target - num] else {
                dict[num] = i
                continue
            }
            
            res.append(lastIndex)
            res.append(i)
        }
        
        return res
    }
}