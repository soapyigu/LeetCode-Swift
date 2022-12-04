/**
 * Question Link: https://leetcode.com/problems/evaluate-division/
 * Primary idea: Classic Union Find. Update roots and values while building the graph.
 * 
 * Time Complexity: O((M + N) * logN), Space Complexity: O(N)
 *
 */

class EvaluateDivision {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
        var res = [Double]()
        var graph = union(equations, values)
        
        for query in queries {
            if graph[query[0]] == nil || graph[query[1]] == nil {
                res.append(-1.0)
                continue
            }
            
            let left = find(&graph, query[0])
            let right = find(&graph, query[1])
            
            if left.0 != right.0 {
                res.append(-1.0)
            } else {
                res.append(left.1 / right.1)
            }
        }
        
        return res
    }

    private func find(_ roots: inout [String: (String, Double)], _ node: String) -> (String, Double) {
        if roots[node] == nil {
            roots[node] = (node, 1)
        }
        
        var n = roots[node]!.0
    
        while n != roots[n]!.0 {
            roots[node] = (roots[n]!.0, roots[n]!.1 * roots[node]!.1)
            n = roots[n]!.0
        }
        
        return roots[node]!
    }

    private func union(_ equations: [[String]], _ values: [Double]) -> [String: (String, Double)] {
        var res = [String: (String, Double)]()
        
        for i in 0..<equations.count {
            let left = find(&res, equations[i][0])
            let right = find(&res, equations[i][1])
            
            if left.0 != right.0 {
                res[left.0] = (right.0, values[i] * right.1 / left.1)
            }
        }
        
        return res
    }
}
