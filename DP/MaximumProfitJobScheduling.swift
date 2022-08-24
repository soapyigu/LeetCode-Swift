/**
 * Question Link: https://leetcode.com/problems/maximum-profit-in-job-scheduling/
 * Primary idea: Dynamic Programming, dp[i] means the max profit starting at i, find valid next job using binary search.
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class MaximumProfitJobScheduling {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        let jobs = constructJobs(startTime, endTime, profit)
        var maxProfits = Array(repeating: -1, count: jobs.count), maxProfit = Int.min
        
        for i in 0..<jobs.count {
            maxProfit = max(findMaxProfit(jobs, i, &maxProfits), maxProfit)
        }
        
        return maxProfit
    }
    
    private func findMaxProfit(_ jobs: [Job], _ index: Int, _ maxProfits: inout [Int]) -> Int {
        if index == jobs.count {
            return 0
        }
        
        if maxProfits[index] != -1 {
            return maxProfits[index]
        }
        
        let nextIndex = findNextIndex(jobs, index)
        
        let maxProfit = max(findMaxProfit(jobs, index + 1, &maxProfits), jobs[index].profit + findMaxProfit(jobs, nextIndex, &maxProfits))
        
        maxProfits[index] = maxProfit
        
        return maxProfit
    }
    
    private func findNextIndex(_ jobs: [Job], _ index: Int) -> Int {        
        var left = index, right = jobs.count - 1
        var mid = 0
        
        while left <= right {
            mid = (right - left) / 2 + left
            
            // overlap
            if jobs[index].endTime <= jobs[mid].startTime {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        
        return right + 1
    }
    
    
    private func constructJobs(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> [Job] {
        return (0..<startTime.count)
        .map { Job(startTime: startTime[$0], endTime: endTime[$0], profit: profit[$0]) }
        .sorted { 
            if $0.startTime != $1.startTime {
                return $0.startTime < $1.startTime 
            } else {
                return $0.endTime < $1.endTime 
            }
        }
    }
    
    struct Job {
        var startTime: Int
        var endTime: Int
        var profit: Int
    }
}