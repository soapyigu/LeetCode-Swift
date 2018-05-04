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
        let totalGas = gas.reduce(0) { $0 + $1 }, totalCost = cost.reduce(0) { $0 + $1 }
        guard totalGas >= totalCost else {
            return -1
        }
        
        var start = 0, gasSum = 0, costSum = 0
        
        for (i, currentGas) in gas.enumerated() {
            let currentCost = cost[i]
            
            gasSum += currentGas
            costSum += currentCost
            
            if gasSum < costSum {
                start = i + 1
                gasSum = 0
                costSum = 0
            }
        }
        
        return start
    }
}