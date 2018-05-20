/**
 * Question Link: https://leetcode.com/problems/evaluate-division/
 * Primary idea: Build dict to maintain divide result, and use BFS to get specific query value
 * 
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class EvaluateDivision {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
        let dict = initDict(equations, values)
        var rest = [Double]()
        
        for query in queries {
            guard let first = query.first, let last = query.last else {
                res.append(-1.0)
                continue
            } 
            
            guard let _ = dict[first], let _ = dict[last] else {
                res.append(-1.0)
                continue
            }

            bfs(query, dict, &rest)
        }
        
        return rest
    }
    
    fileprivate func initDict(_ equations: [[String]], _ values: [Double]) -> [String: [(String, Double)]] {
        var dict = [String: [(String, Double)]]()
        
        for (i, equation) in equations.enumerated() {
            guard let dividend = equation.first, let divisor = equation.last else {
                continue
            }
            
            dict[dividend] = dict[dividend, default: []] + [(divisor, values[i])]
            dict[divisor] = dict[divisor, default: []] + [(dividend, 1.0 / values[i])]
        }
        
        return dict
    }
    
    fileprivate func bfs(_ query: [String], _ dict: [String: [(String, Double)]], _ rest: inout [Double]) {
        var visited = Set([first])
        var qStrs = [first]
        var qVals = [1.0]

        while !qStrs.isEmpty {
            let currentStr = qStrs.removeFirst()
            let currentVal = qVals.removeFirst()

            if currentStr == last {
                rest.append(currentVal)
                return
            }

            guard let candidates = dict[currentStr] else {
                continue
            }

            for (str, val) in candidates {
                guard !visited.contains(str) else {
                    continue
                }

                visited.insert(str)
                qStrs.append(str)
                qVals.append(currentVal * val)
            }


            rest.append(-1.0)
        }
    }
}