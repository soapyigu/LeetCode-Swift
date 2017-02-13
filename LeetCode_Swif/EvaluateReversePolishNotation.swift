/**
 * Question Link: https://leetcode.com/problems/evaluate-reverse-polish-notation/
 * Primary idea: Push a number to a stack and pop two from operation when encounters a operator
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class EvaluateReversePolishNotation {
    func evalRPN(tokens: [String]) -> Int {
        var stack = [Int]()
        
        for str in tokens {
            if _isNumber(str: str) {
                stack.append(Int(str)!)
            } else {
                guard stack.count > 1 else {
                    return 0
                }
                
                let post = stack.removeLast()
                let prev = stack.removeLast()
                
                let res = _operate(prev: prev, post: post, token: str)
                stack.append(res)
            }
        }
        
        if stack.count == 0 {
            return 0
        } else {
            return stack.first!
        }
    }
    
    private func _isNumber(str: String) -> Bool {
        return Int(str) != nil
    }
    
    private func _operate(prev: Int, post: Int, token: String) -> Int{
        switch token {
            case "+":
                return prev + post
            case "-":
                return prev - post
            case "*":
                return prev * post
            default:
                return prev / post
       }
    }
}
