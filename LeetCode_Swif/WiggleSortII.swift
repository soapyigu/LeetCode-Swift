/**
 * Question Link: https://leetcode.com/problems/wiggle-sort-ii/
 * Primary idea: Sort and re-arrange the array 
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class WiggleSortII {
    func wiggleSort(inout nums: [Int]) {
        let temp = nums.sort({$0 < $1})
        
        var m = temp.count
        var n = (m + 1) / 2
        
        for i in 0 ..< nums.count {
            if i & 1 == 0 {
                n = n - 1
                nums[i] = temp[n]
            } else {
                m = m - 1
                nums[i] = temp[m]
            }
        }
    }
}