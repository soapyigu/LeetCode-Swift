/**
 * Question Link: https://leetcode.com/problems/exclusive-time-of-functions/
 * Primary idea: Use a stack to keep task start time, update it when a new task starts.
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class ExclusiveTimeFunctions {
    func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
        var stack = [(Int, Int)](), res = Array(repeating: 0, count: n)
        
        for log in logs {
            // parse log
            let logInfo = log.components(separatedBy: ":")
            let id = Int(logInfo[0])!, isStart = logInfo[1] == "start", time = Int(logInfo[2])!
            
            if isStart {
                if let last = stack.last {
                    res[last.0] += time - last.1
                }
                
                stack.append((id, time))
            } else {
                let startTime = stack.removeLast().1
                
                res[id] += time - startTime + 1
                
                if var last = stack.last {
                    last.1 = time + 1
                    stack[stack.count - 1] = last
                }
            }
        }
        
        return res
    }
}