/**
 * Question Link: https://leetcode.com/problems/maximize-distance-to-closest-person/
 * Primary idea: Calculate and compare middle point between two taken seats.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

 class MaximizeDistanceToClosestPerson {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var lastOne = -1, maxDistance = 0
        
        for (i, seat) in seats.enumerated() {
            if seat == 1 {
                if lastOne == -1 {
                    maxDistance = max(maxDistance, i)
                } else {
                    maxDistance = max(maxDistance, (i - lastOne) / 2)
                }
                
                lastOne = i
            }  
        }
        
        // edge case: only one sitting person
        maxDistance = max(maxDistance, seats.count - lastOne - 1)
        
        return maxDistance
    }
}