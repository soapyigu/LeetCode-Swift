/**
 * Question Link: https://leetcode.com/problems/paint-fence/
 * Primary idea: Dynamic Programming, the current ways are either same as of different than previous one 
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class PaintFence {
    func numWays(_ n: Int, _ k: Int) -> Int {
        if n == 0 || k == 0 {
            return 0
        }
        if n == 1 {
            return k
        }
        
        var lastSame = k
        var lastDiff = k * (k - 1)
        
        for i in 2 ..< n {
            (lastSame, lastDiff) = (lastDiff, (k - 1) * (lastSame + lastDiff))
        }
        
        return lastSame + lastDiff
    }
}