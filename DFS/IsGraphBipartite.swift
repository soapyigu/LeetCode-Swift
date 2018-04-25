/**
 * Question Link: https://leetcode.com/problems/is-graph-bipartite/
 * Primary idea: Depth-first Search, try to color the graph with two colors
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class IsGraphBipartite {
    func isBipartite(_ graph: [[Int]]) -> Bool {
        var colors = Array(repeating: -1, count: graph.count)
        
        for i in 0..<graph.count {
            if colors[i] == -1 && !validColor(&colors, 0, graph, i) {
                return false
            }
        }
        
        return true
    }
    
    fileprivate func validColor(_ colors: inout [Int], _ color: Int, _ graph: [[Int]], _ index: Int) -> Bool {
        if colors[index] != -1 {
            return colors[index] == color
        }
        
        colors[index] = color
        
        for neighbor in graph[index] {
            if !validColor(&colors, 1 - color, graph, neighbor) {
                return false
            }
        }
        
        return true
    }
}