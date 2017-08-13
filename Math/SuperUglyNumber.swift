/**
 * Question Link: https://leetcode.com/problems/super-ugly-number/
 * Primary idea: Use dict to track indices to build a helper array, 
 *               remember to kill duplicates
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class SuperUglyNumber {
    func nthSuperUglyNumber(n: Int, _ primes: [Int]) -> Int {
        var uglyNums = [Int](count: n, repeatedValue: 1)
        var dict = _init(primes)
        
        for i in 1..<n {
            uglyNums[i] = _getMin(&dict, uglyNums, i - 1)
        }
        
        return uglyNums[n - 1]
    }
    
    private func _init(primes: [Int]) -> [Int: Int] {
        var dict = [Int: Int]()
        
        for prime in primes {
            dict[prime] = 0
        }
        
        return dict
    }
    
    private func _getMin(inout dict: [Int: Int], _ uglyNums: [Int], _ previous: Int) -> Int {
        var minNum = Int.max
  
        for prime in dict.keys {
            var current = uglyNums[dict[prime]!] * prime
            
            // kill duplicates
            if current == uglyNums[previous] {
                dict[prime]! += 1
                current = uglyNums[dict[prime]!] * prime
            }
            minNum = min(current, minNum)
        }
  
        return minNum
    }
}