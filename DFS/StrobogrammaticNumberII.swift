/**
 * Question Link: https://leetcode.com/problems/strobogrammatic-number-ii/
 * Primary idea: Classic DFS, set two places with correspond characters; 
 *               starting from head and tail, and then move towards middle to cover all places.

 * Time Complexity: O(m^n), here m is 5; Space Complexity: O(n)
 *
 */

 class StrobogrammaticNumberII {
    let mirrorDigits = [0: 0, 1: 1, 6: 9, 8: 8, 9: 6]
    
    func findStrobogrammatic(_ n: Int) -> [String] {
        var path = Array(repeating: Character(" "), count: n), paths = [String]()
        
        dfs(0, n - 1, &path, &paths)
        
        return paths
    }
    
    private func dfs(_ left: Int, _ right: Int, _ path: inout [Character], _ paths: inout [String]) {
        if left > right {
            paths.append(String(path))
            return
        }
        
        for (key, value) in mirrorDigits {
            if left == right && (key == 6 || key == 9) {
                continue
            }
            if left != right && left == 0 && key == 0 {
                continue
            }
            
            path[left] = Character(String(key))
            path[right] = Character(String(value))
            
            dfs(left + 1, right - 1, &path, &paths)
        }
    }
}
