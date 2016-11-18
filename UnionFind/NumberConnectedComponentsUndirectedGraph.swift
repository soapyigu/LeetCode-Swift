/**
 * Question Link: https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/
 * Primary idea: Classic Union Find, decrease count when there is a link between two nodes
 * 
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

class NumberConnectedComponentsUndirectedGraph {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        guard n > 0 else {
            return 0
        }
    
        var count = n
        var roots = [Int](0 ... n - 1)
        
        for edge in edges {
            let root0 = findRoot(edge[0], roots)
            let root1 = findRoot(edge[1], roots)
            
            if root0 != root1 {
                count -= 1
                roots[root1] = root0
            }
        }
        
        return count
    }
    
    private func findRoot(_ node: Int, _ roots: [Int]) -> Int {
        var node = node
    
        while (node != roots[node]) {
            node = roots[node]
        }
        
        return node
    }
}