/**
 * Question Link: https://leetcode.com/problems/sort-transformed-array/
 * Primary idea: Compare head and tail and put larger/smaller one to end/start of array,
 *               according to a is less than 0 or not
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class SortTransformedArray {
    func sortTransformedArray(_ nums: [Int], _ a: Int, _ b: Int, _ c: Int) -> [Int] {
        var res = [Int](repeating: 0, count: nums.count)
        var left = 0
        var right = res.count - 1
        var index = a >= 0 ? nums.count - 1 : 0
        
        while left <= right {
            let leftVal = getRes(a, b, c, nums[left])
            let rightVal = getRes(a, b, c, nums[right])
            
            if a >= 0 {
                if leftVal > rightVal {
                    res[index] = leftVal
                    left += 1
                } else {
                    res[index] = rightVal
                    right -= 1
                }
                index -= 1
            } else if a < 0 {
                if leftVal < rightVal {
                    res[index] = leftVal
                    left += 1
                } else {
                    res[index] = rightVal
                    right -= 1
                }
                index += 1
            }
        }
        
        return res
    }
    
    private func getRes(_ a: Int, _ b: Int, _ c: Int, _ x: Int) -> Int {
        return a * x * x + b * x + c
    }
}