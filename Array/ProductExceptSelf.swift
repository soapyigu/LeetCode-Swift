/**
 * Question Link: https://leetcode.com/problems/product-of-array-except-self/
 * Primary idea: Use two arrays to hold multiplication result from left and right sides 
 *               while iterating the original array
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class ProductExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 1, count: nums.count)
        var right = 1
        
        guard nums.count > 0 else {
            return res
        }
    
        for i in 1..<nums.count {
            res[i] = res[i - 1] * nums[i - 1]
        }
        for i in (0..<nums.count).reversed() {
            res[i] = right * res[i]
            right = right * nums[i]
        }
        
        return res
    }
}