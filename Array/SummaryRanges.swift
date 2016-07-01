/**
 * Question Link: https://leetcode.com/problems/summary-ranges/
 * Primary idea: Traverse the array and build string when num[i] != num[i - 1] + 1, 
 *               note to handle the edge case when it goes to the end of the array
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class SummaryRanges {
    func summaryRanges(nums: [Int]) -> [String] {
        var res = [String]()
        var str = ""
        var start = 0
        
        guard nums.count > 0 else {
            return res
        }
  
        for i in 0 ... nums.count {
            if i == nums.count || (i > 0 && nums[i] != nums[i - 1] + 1) {
                str = "\(nums[start])"
                if i - 1 != start {
                    str += "->\(nums[i - 1])"
                }
                res.append(str)
                start = i
            }
        }
        return res
    }
}