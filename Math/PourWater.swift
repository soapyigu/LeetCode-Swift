/**
 * Question Link: https://leetcode.com/problems/pour-water/
 * Primary idea: One pointer. Go left and then right to update the drop pointer.
 * Time Complexity: O(nk), Space Complexity: O(1)
 *
 */

 class PourWater {
    func pourWater(_ heights: [Int], _ volume: Int, _ k: Int) -> [Int] {
        var result = heights, idx = k, dropIdx = k
        
        for _ in 0..<volume {
            dropIdx = k
            
            // check left
            idx = k - 1
            while idx >= 0 {
                if result[idx] > result[dropIdx] {
                    break
                }
                
                if result[idx] < result[dropIdx] {
                    dropIdx = idx
                }
                
                idx -= 1
            }
            
            // check right
            if dropIdx == k {
                idx = k + 1
                while idx < result.count {
                    if result[idx] > result[dropIdx] {
                        break
                    }
                    
                    if result[idx] < result[dropIdx] {
                        dropIdx = idx
                    }

                    idx += 1
                }
            }
            
            result[dropIdx] += 1
        }
        
        return result
    }
}