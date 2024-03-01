/**
 * Question Link: https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/
 * Primary idea: Binary Search, minimum possible value is max number in weights; 
 *               maximum possible value is the sum of weights. canShip function simulate if all item can be ship.
 *
 * Time Complexity: O(Wlogn), Space Complexity: O(1)
 */

class Solution {
    func shipWithinDays(_ weights: [Int], _ D: Int) -> Int {
        if weights.count <= 0 {
            return 0
        }
        
        var l = weights.max()!, r = weights.reduce(0) { $0 + $1 }
        
        while l <= r {
            let mid = Int((r - l) / 2 + l)
            if canShip(weights, D, mid) {
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        
        return l
    }
    func canShip(_ weights: [Int], _ D: Int, _ cap:Int) -> Bool {
        var visited = Set<Int>()
        
        var rest = cap, day = 0
        for (idx, w) in weights.enumerated() {
            if rest - w < 0 {
                day += 1
                if day >= D {
                    return false
                }
                rest = cap
            }
            rest -= w
        }
        
        return true
    }
}
