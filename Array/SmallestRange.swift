/**
 * Question Link: https://leetcode.com/problems/smallest-range/
 * Primary idea: Merge K lists + Minimum Window Substring
 * Time Complexity: O(nm), Space Complexity: O(nm)
 *
 */

 class SmallestRange {
    func smallestRange(_ nums: [[Int]]) -> [Int] {        
        let mergedNums = merge(nums)
        
        var left = 0, diff = Int.max, res = [Int]()
        var numsIndexFreq = Dictionary((0..<nums.count).map { ($0, 0) }, uniquingKeysWith: +), count = 0
        
        for (right, numIndex) in mergedNums.enumerated() {
            if numsIndexFreq[numIndex.1]! == 0 {
                count += 1
            }
    
            numsIndexFreq[numIndex.1]! += 1
            
            while count == nums.count {
                if diff > mergedNums[right].0 - mergedNums[left].0 {
                    diff = mergedNums[right].0 - mergedNums[left].0
                    res = [mergedNums[left], mergedNums[right]].map { $0.0 }
                }
                
                if numsIndexFreq[mergedNums[left].1]! == 1 {
                    count -= 1
                }
                numsIndexFreq[mergedNums[left].1]! -= 1
                
                left += 1
            }
        }
        
        return res
    }
    
    fileprivate func merge(_ nums: [[Int]]) -> [(Int, Int)] {
        var res = [(Int, Int)]()
        
        for (numsIndex, nums) in nums.enumerated() {
            for num in nums {
                res.append((num, numsIndex))
            }
        }
        
        return res.sorted { return $0.0 < $1.0 }
    }
}