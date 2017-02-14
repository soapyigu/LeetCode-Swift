/**
 * Question Link: https://leetcode.com/problems/gas-station/
 * Primary idea: use currentSum and total to keep track of the gas and cost, 
 *               change start index when currentSum is less than 0
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class GasStation {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        guard gas.count == cost.count else {
            return -1
        }
    
        var currentSum = 0
        var total = 0
        var startIdx = 0
        
        for (i, curtGas) in gas.enumerated() {
            currentSum += (curtGas - cost[i])
            total += (curtGas - cost[i])
            
            if currentSum < 0 {
                startIdx = i + 1
                currentSum = 0
            }
        }
        
        if total < 0 {
            return -1
        }
        return startIdx
    }
}