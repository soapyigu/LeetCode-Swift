/**
 * Question Link: https://leetcode.com/problems/longest-consecutive-sequence/
 * Primary idea: Iterate the array and check all neighbor numbers with the help of two sets
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class LongestConsecutiveSequence {
    func longestConsecutive(nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var setNums = Set<Int>(nums)
        var setDups = Set<Int>()
        var longest = 1
        
        for num in nums {
            guard !setDups.contains(num) else {
                continue
            }
            
            setDups.insert(num)
            var len = 1
            
            len += _helper(&setDups, &setNums, num, 1);
            len += _helper(&setDups, &setNums, num, -1);
                
            if (len > longest) {
                longest = len;
            }
        }
        
        return longest
    }
    
    private func _helper(inout setDups: Set<Int>, inout _ setNums: Set<Int>, _ num: Int, _ step: Int) -> Int {
        var len = 0
        var num = num
        
        while setNums.contains(num + step) {
            num += step
            setDups.insert(num)
            len += 1
        }
        
        return len
    }
}