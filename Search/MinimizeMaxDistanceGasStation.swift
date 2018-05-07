/**
 * Question Link: https://leetcode.com/problems/minimize-max-distance-to-gas-station/
 * Primary idea: Binary search to track minmax distance that can make, and update 
 *				 boundary based on station add number K vs. distance possible stations number
 *
 * Time Complexity: O(nlogm), Space Complexity: O(1)
 */

 class MinimizeMaxDistanceGasStation {
    func minmaxGasDist(_ stations: [Int], _ K: Int) -> Double {
        var left = Double(0), right = Double(stations.last! - stations.first!)
        
        while right - left >= pow(10, -6) {
            let mid = left + (right - left) / 2
            var count = 0
            
            for i in 0..<stations.count - 1 {
                count += Int(Double((stations[i + 1] - stations[i])) / mid)
            }
            
            if count > K {
                left = mid
            } else {
                right = mid
            }
        }
        
        return right
    }
}