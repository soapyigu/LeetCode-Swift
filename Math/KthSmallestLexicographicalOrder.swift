/**
 * Question Link: https://leetcode.com/problems/k-th-smallest-in-lexicographical-order/
 * Primary idea: Image it is a ten-deminsion tree, we only need to calculate the number 
 *               of children for each node, and keep minus until we get the right one
 * 
 * Note: Swift does not have a way to access a character in a string with O(1), 
 *       thus we have to first transfer the string to a character array
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class KthSmallestLexicographicalOrder {
    func findKthNumber(_ n: Int, _ k: Int) -> Int {
        var curt = 1, k = k - 1
        
        while k > 0 {
            var step = 0, first = curt, last = curt + 1
            while first <= n {
                step += min(n + 1, last) - first
                first *= 10
                last *= 10
            }
            if step <= k {
                curt += 1
                k -= step
            } else {
                curt *= 10
                k -= 1
            }
        }
        
        return curt
    }
}