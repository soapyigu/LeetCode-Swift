/**
 * Question Link: https://leetcode.com/problems/strobogrammatic-number-ii/
 * Primary idea: Classic DFS, set two places with correspond characters; 
 *               starting from head and tail, and then move towards middle to cover all places.

 * Time Complexity: O(m^n), here m is 5; Space Complexity: O(n)
 *
 */

 class StrobogrammaticNumberII {
    func findStrobogrammatic(_ n: Int) -> [String] {
        var res = [String]()
        
        guard n >= 1 else {
            return res
        }
        
        let left = Array("01689"), right = Array("01986")
        var path = Array(repeating: Character("-"), count: n)
        
        dfs(&res, left, right, 0, n - 1, &path)
        
        return res
    }
    
    fileprivate func dfs(_ res: inout [String], _ left: [Character], _ right: [Character], _ leftIdx: Int, _ path: inout [Character]) {
    	let rightIdx = path.count - leftIdx - 1

        if leftIdx > rightIdx {            
            res.append(String(path))
            return
        }
        
        for i in 0..<left.count {
            if leftIdx == 0 && leftIdx != rightIdx && left[i] == "0" {
                continue
            }
            
            if leftIdx == rightIdx && (left[i] == "6" || left[i] == "9") {
                continue
            }
            
            path[leftIdx] = left[i]
            path[rightIdx] = right[i]
            
            dfs(&res, left, right, leftIdx + 1, rightIdx - 1, &path)
        }
    }
}