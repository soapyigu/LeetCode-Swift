/**
 * Question Link: https://leetcode.com/problems/missing-ranges/
 * Primary idea: Scan the array and compare each element with previous one and generate  corresponding ranges
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class MissingRanges {
    func findMissingRanges(_ nums: [Int], _ lower: Int, _ upper: Int) -> [String] {     
        var res = [String]()
        
        guard !nums.isEmpty else {
            addRange(&res, lower, upper)
            return res
        }
        
        addRange(&res, lower, nums[0] - 1)
        
        for i in 1..<nums.count {
            addRange(&res, nums[i - 1] + 1, nums[i] - 1)
        }
        
        addRange(&res, nums[nums.count - 1] + 1, upper)
        
        return res
    }
    
    private func addRange(_ res: inout [String], _ start: Int, _ end: Int) {
        if start > end {
            return
        } else if start == end {
            res.append("\(end)")
        } else {
            res.append("\(start)->\(end)")
        }
    }
}