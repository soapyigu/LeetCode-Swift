/**
 * Question Link: https://leetcode.com/problems/contains-duplicate/
 * Primary idea: traverse the array and use a set to check duplicates
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ContainsDuplicate {
    func containsDuplicate(nums: [Int]) -> Bool {
        if nums.count <= 1 {
            return false
        }
    
        var set = Set<Int>()
        
        for i in 0...nums.count - 1 {
            if set.contains(nums[i]) {
                return true
            } else {
                set.insert(nums[i])
            }
        }
        
        return false
    }
}