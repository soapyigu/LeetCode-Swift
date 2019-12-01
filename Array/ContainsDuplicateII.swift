/**
 * Question Link: https://leetcode.com/problems/contains-duplicate-ii/
 * Primary idea: use a dictionary to check duplicates, then judge if their distance is less than k
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class ContainsDuplicateII {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard nums.count > 1 else {
            return false
        }
        
        var numToLastIndex = [Int: Int]()
        
        for (i, num) in nums.enumerated() {
            if let lastIndex = numToLastIndex[num], i - lastIndex <= k {
                return true
            } else {
                numToLastIndex[num] = i
            }
        }
        
        return false
    }
}
