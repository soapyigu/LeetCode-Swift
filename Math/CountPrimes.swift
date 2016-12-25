/**
 * Question Link: https://leetcode.com/problems/count-primes/
 * Primary idea: Create a boolean array to determine prime or not, 
 *               filter numbers are times of previous ones
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class CountPrimes {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {
            return 0
        }
    
        var isPrime = [Bool](repeating: true, count: n)
        
        for i in 2 ..< n {
            if isPrime[i] {
                for j in stride(from: 2 * i, to: n, by: i) {
                    isPrime[j] = false
                }
            }
        }
        
        var count = 1
        for i in stride(from: 3, to: n, by: 2) {
            count += isPrime[i] ? 1 : 0
        } 
        
        return count
    }
}