/**
 * Question Link: https://leetcode.com/problems/contains-duplicate-ii/
 * Primary idea: use a dictionary to check duplicates, then judge if their distance is less than k
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ContainsDuplicateII {
    func containsNearbyDuplicate(nums: [Int], _ k: Int) -> Bool {
        // edge case
        if nums.count <= 1 {
            return false
        }
        
        // key: nums[index], value: index
        var dict = [Int: Int]()
        
        for i in 0...nums.count - 1 {
            guard let index = dict[nums[i]] where i - index <= k else {
                dict[nums[i]] = i
                continue
            } 
            
            return true
        }
        
        return false
    }
}