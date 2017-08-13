/**
 * Question Link: https://leetcode.com/problems/ugly-number-ii/
 * Primary idea: Use three indices to build a helper array
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class UglyNumberII {
    func nthUglyNumber(n: Int) -> Int {
        guard n > 1 else {
            return 1
        }
        
        var uglyNums = [Int](count: n, repeatedValue: 1)
        
        var index2 = 0
        var index3 = 0
        var index5 = 0
        
        for i in 1..<n {
            var minVal = min(uglyNums[index2] * 2, uglyNums[index3] * 3, uglyNums[index5] * 5)
            
            if minVal == uglyNums[index2] * 2 {
                index2 += 1
            } 
            if minVal == uglyNums[index3] * 3 {
                index3 += 1
            } 
            if minVal == uglyNums[index5] * 5{
                index5 += 1
            }
            
            uglyNums[i] = minVal
        }
        
        return uglyNums[n - 1]
    }
}