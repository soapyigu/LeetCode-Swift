/**
 * Question Link: https://leetcode.com/problems/the-earliest-moment-when-everyone-become-friends/
 * Primary idea: Classic Union Find, union every node until the count drops down to 1.
 * 
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

class EarliestMomentFriends {
    func earliestAcq(_ logs: [[Int]], _ n: Int) -> Int {
        let logs = logs.sorted { $0[0] < $1[0] }
        
        var roots = Array(0..<n), count = n
        
        for log in logs {
            let time = log[0], friend1 = log[1], friend2 = log[2]
            
            let root1 = find(friend1, roots)
            let root2 = find(friend2, roots)
            
            if root1 != root2 {
                roots[root1] = root2
                count -= 1
            }
            
            if count == 1 {
                return time
            }
        }
        
        return -1
    }
    
    private func find(_ node: Int, _ roots: [Int]) -> Int {
        var node = node
        
        while node != roots[node] {
            node = roots[node]
        }
        
        return node
    }
}
