/**
 * Question Link: https://leetcode.com/problems/can-place-flowers/
 * Primary idea: Greedy algorithm. Place flowers as early as possible.
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class CanPlaceFlowers {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var maxFlowersCouldPlant = 0, flowerbed = flowerbed
        
        for i in 0..<flowerbed.count {
            guard flowerbed[i] == 0 else {
                continue
            }
            
            if i < 1 {
                if flowerbed.count == 1 || flowerbed[i + 1] != 1 {
                    flowerbed[i] = 1
                    maxFlowersCouldPlant += 1
                }
            } else if i + 1 == flowerbed.count {
                if flowerbed.count == 1 || flowerbed[i - 1] != 1 {
                    flowerbed[i] = 1
                    maxFlowersCouldPlant += 1
                }
            } else {
                if flowerbed[i - 1] != 1 && flowerbed[i + 1] != 1 {
                    flowerbed[i] = 1
                    maxFlowersCouldPlant += 1
                }
            }
            
            // early exit
            if maxFlowersCouldPlant >= n {
                return true
            }
        }
        
        return maxFlowersCouldPlant >= n
    }
}