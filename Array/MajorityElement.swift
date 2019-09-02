/**
 * Question Link: https://leetcode.com/problems/majority-element/
 * Primary idea: traverse the array and track the majority element accordingly
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0, candidate = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }  
            
            count += (candidate == num) ? 1 : -1           
        }
        
        return candidate
    }
}
