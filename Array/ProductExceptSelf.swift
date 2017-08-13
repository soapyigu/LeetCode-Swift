/**
 * Question Link: https://leetcode.com/problems/product-of-array-except-self/
 * Primary idea: Use two arrays to hold multiplication result from left and right sides 
 *               while iterating the original array
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class ProductExceptSelf {
    func productExceptSelf(nums: [Int]) -> [Int] {
        var res = [Int]()
    
        guard nums.count > 0 else {
            return res
        }
        
        let left = _initLeft(nums)
        let right = _initRight(nums)
        
        for i in 0..<nums.count {
            res.append(left[i] * right[i])
        }
        
        return res
    }
    
    private func _initLeft(nums: [Int]) -> [Int] {
        var left = [Int]()
        left.append(1)
        
        for i in 1..<nums.count {
            left.append(left[i - 1] * nums[i - 1])
        }
        
        return left
    }
    
    private func _initRight(nums: [Int]) -> [Int] {
        var right = Array(count: nums.count, repeatedValue: 1)
        
        for i in (nums.count - 2).stride(through: 0, by: -1) {
            right[i] = right[i + 1] * nums[i + 1]
        }
        
        return right
    }
}