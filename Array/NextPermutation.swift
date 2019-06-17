/**
 * Question Link: https://leetcode.com/problems/next-permutation/
 * Primary idea: Traverse the number from right to left, and replace the first smaller one 
 *               with the least bigger one, then reverse all number afterwards
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class NextPermutation {
    func nextPermutation(_ nums: inout [Int]) {
        guard let violateIndex = findViolate(nums) else {
            nums.reverse()
            return
        }
        
        swap(&nums, violateIndex, findLeastGreater(nums, violateIndex))
        nums = nums[0...violateIndex] + nums[(violateIndex + 1)...].reversed()
    }
    
    fileprivate func findViolate(_ nums: [Int]) -> Int? {
        for i in (1..<nums.count).reversed() {
            if nums[i] > nums[i - 1] {
                return i - 1
            }
        }
        
        return nil
    }
    
    fileprivate func findLeastGreater(_ nums: [Int], _ violateIndex: Int) -> Int {
        for i in (violateIndex + 1..<nums.count).reversed() {
            if nums[i] > nums[violateIndex] {
                return i
            }
        }
        
        fatalError()
    }
    
    fileprivate func swap<T>(_ nums: inout [T], _ indexL: Int, _ indexR: Int) {
        (nums[indexL], nums[indexR]) = (nums[indexR], nums[indexL])
    }
}