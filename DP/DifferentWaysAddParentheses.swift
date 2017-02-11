/**
 * Question Link: https://leetcode.com/problems/different-ways-to-add-parentheses/
 * Primary idea: Divide and Conquer, calculate left and right separately and union results
 *
 * Note: Keep a memo dictionary to avoid duplicate calculations
 * Time Complexity: O(n^n), Space Complexity: O(n)
 *
 */

class DifferentWaysAddParentheses {
    var memo = [String: [Int]]()

    func diffWaysToCompute(_ input: String) -> [Int] {
        if let nums = memo[input] {
            return nums
        }
    
        var res = [Int]()
        let chars = Array(input.characters)
        
        for (i, char) in chars.enumerated() {
            if char == "+" || char == "*" || char == "-" {
                let leftResults = diffWaysToCompute(String(chars[0 ..< i]))
                let rightResults = diffWaysToCompute(String(chars[i + 1 ..< chars.count]))
                
                for leftRes in leftResults {
                    for rightRes in rightResults {
                        if char == "+" {
                            res.append(leftRes + rightRes)
                        }
                        if char == "-" {
                            res.append(leftRes - rightRes)
                        }
                        if char == "*" {
                            res.append(leftRes * rightRes)
                        }
                    }
                }
            }
        }
        
        if res.count == 0 {
            res.append(Int(input)!)
        }
        
        memo[input] = res
        
        return res
    }
}