class Solution {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        var leftSums = [0: 0]
        
        var leftSum = 0
        for l in 0..<nums.count {
            leftSum += nums[l]
            if leftSums[leftSum] == nil {
                leftSums[leftSum] = l + 1
            }
        }
        
        var result = leftSums[x, default: Int.max]
        
        var rightSum = 0
        for r in (0..<nums.count).reversed() {
            rightSum += nums[r]
            if let l = leftSums[x-rightSum], r > l {
               result = min(result, l + nums.count - r)
            }
        }
        
        return result < Int.max ? result : -1
    }
}