/**
 * Question Link: https://leetcode.com/problems/majority-element-ii/
 * Primary idea: traverse the array and track the majority element accordingly, do not
 *				 forget to verify they are valid after first iteration
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class MajorityElementII {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var num0: Int?
        var num1: Int?
        var count0 = 0
        var count1 = 0
        var res = [Int]()
        
        for num in nums {
            if let num0 = num0, num0 == num {
                count0 += 1
            } else if let num1 = num1, num1 == num {
                count1 += 1
            } else if count0 == 0 {
                num0 = num
                count0 = 1
            } else if count1 == 0 {
                num1 = num
                count1 = 1
            } else {
                count0 -= 1
                count1 -= 1
            }
        }
        
        count0 = 0
        count1 = 0
        
        for num in nums {
            if num == num0 {
                count0 += 1
            }
            if num == num1 {
                count1 += 1
            }
        }
        
        if count0 > nums.count / 3 {
            res.append(num0!)
        }
        if count1 > nums.count / 3 {
            res.append(num1!)
        }
        
        return res
    }
}