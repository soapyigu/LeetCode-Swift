/**
 * Question Link: https://leetcode.com/problems/count-primes/
 * Primary idea: Create a boolean array to determine prime or not, 
 *               filter numbers are times of previous number starting from its square
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class CountPrimes {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {
            return 0
        }
      
        // init isPrime bool array
        var isPrime = Array(repeating: true, count: n)
        isPrime[0] = false
        isPrime[1] = false
        
        // count prime number
        var count = 0
        for num in 2..<n {
            guard isPrime[num] else {
                continue
            }
            
            count += 1
            
            var nextNum = num * num
            while nextNum < n {
                isPrime[nextNum] = false
                nextNum += num
            }
        }
        
        return count
    }
}