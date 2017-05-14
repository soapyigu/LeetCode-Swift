/**
 * Question Link: https://leetcode.com/problems/sliding-window-maximum/
 * Primary idea: Use an array to store indices of elements, from larger to smaller, 
 *               adjust it while iterating the array
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class SlidingWindowMaximum {
    func maxSlidingWindow(nums: [Int], _ k: Int) -> [Int] {
        var maxIdx = [Int]()
        var res = [Int]()
        
        for i in 0 ..< nums.count {
            while maxIdx.count > 0 && nums[maxIdx.last!] < nums[i] {
                maxIdx.removeLast()
            }
            
            maxIdx.append(i)
            
            if i + 1 >= k {
                res.append(nums[maxIdx.first!])
            }
            if i - maxIdx.first! + 1 == k {
                maxIdx.removeFirst()
            }
        }
        
        return res
    }
}