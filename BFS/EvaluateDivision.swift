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
            guard let _ = dict[query.first!], let _ = dict[query.last!] else {
                rest.append(-1.0)
                continue
            }
            
            bfs(query, dict, &rest)
        }
        
        return rest
    }
    
    fileprivate func initDict(_ equations: [[String]], _ values: [Double]) -> [String: [(String, Double)]] {
        var dict = [String: [(String, Double)]]()
        
        for (i, equation) in equations.enumerated() {
            let dividend = equation.first!, divisor = equation.last!, divideRes = values[i]
            
            insert(dividend, divisor, divideRes, to: &dict)
            insert(divisor, dividend, 1.0 / divideRes, to: &dict)
        }
        
        return dict
    }
    
    fileprivate func insert(_ dividend: String, _ divisor: String, _ divideRes: Double, to dict: inout [String: [(String, Double)]]) {
        if dict[dividend] == nil {
            dict[dividend] = [(divisor, divideRes)]
        } else {
            dict[dividend]!.append((divisor, divideRes))
        }
    }
    
    fileprivate func bfs(_ query: [String], _ dict: [String: [(String, Double)]], _ rest: inout [Double]) {
        var visited = Set([query.first!])
        var qStrs = [query.first!]
        var qVals = [1.0]

        while !qStrs.isEmpty {
            let currentStr = qStrs.removeFirst()
            let currentVal = qVals.removeFirst()

            if currentStr == query.last! {
                rest.append(currentVal)
                return
            }

            for (str, val) in dict[currentStr]! {
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