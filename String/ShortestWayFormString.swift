/**
 * Question Link: https://leetcode.com/problems/shortest-way-to-form-string/
 * Primary idea: Iterate through source and consume same characters for the target
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class ShortestWayFormString {
    func shortestWay(_ source: String, _ target: String) -> Int {
        var res = 0, idx = 0
        let s = Array(source), t = Array(target)
        
        while idx < t.count {
            let pre = idx
            
            for i in 0..<s.count {
                if idx < t.count && t[idx] == s[i] {
                    idx += 1
                }
            }
            
            if pre == idx {
                return -1
            }
            
            res += 1
        }
        
        return res
    }
}