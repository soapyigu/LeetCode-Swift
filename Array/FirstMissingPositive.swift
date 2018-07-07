/**
 * Question Link: https://leetcode.com/problems/first-missing-positive/
 * Primary idea: Use a set to hold number in the array and iterate through 1...nums.count to find the missing one
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class FirstMissingPositive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        
        nums.forEach { set.insert($0) }
        
        for i in 0..<nums.count {
            if !set.contains(i + 1) {
                return i + 1
            }
        }
        
        return nums.count + 1
    }
}