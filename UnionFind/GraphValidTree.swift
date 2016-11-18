/**
 * Question Link: https://leetcode.com/problems/graph-valid-tree/
 * Primary idea: Classic Union Find, return false encountering a cycle, 
 *               or finally there is more than one link
 * 
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

class GraphValidTree {
    func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        guard n > 0 else {
            return true
        }
        
        var roots = [Int](0 ..< n)
        var count = n
        
        for edge in edges {
            let root0 = findRoot(edge[0], roots)
            let root1 = findRoot(edge[1], roots)
            
            if root0 == root1 {
                return false
            } else {
                roots[root1] = root0
                count -= 1
            }
        }
        
        return count == 1
    }
    
    private func findRoot(_ node: Int, _ roots: [Int]) -> Int {
        var node = node
    
        while node != roots[node] {
            node = roots[node]
        }
        
        return node
    }
}