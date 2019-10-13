/**
 * Question Link: https://leetcode.com/problems/missing-ranges/
 * Primary idea: Scan the array and compare each element with previous one and generate  corresponding ranges
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class MissingRanges {
    func findMissingRanges(_ nums: [Int], _ lower: Int, _ upper: Int) -> [String] {     
        if nums.isEmpty {
            return [getRange(lower - 1, upper + 1)]
        }
        
        var res = [String]()
        
        for (i, num) in nums.enumerated() {
            if i == 0 {
                if lower < num {
                    res.append(getRange(lower - 1, num))
                }
            } else {
                if nums[i - 1] + 1 < num {
                    res.append(getRange(nums[i - 1], num))
                }
            }
        }
        
        if nums.last! + 1 < upper + 1 {
            res.append(getRange(nums.last!, upper + 1))
        }
        
        return res
    }
    
    private func getRange(_ numPrev: Int, _ numPost: Int) -> String {
        if numPrev + 2 == numPost {
            return "\(numPrev + 1)"
        } else {
            return "\(numPrev + 1)->\(numPost - 1)"
        }
    }
}