/**
 * Question Link: https://leetcode.com/problems/evaluate-reverse-polish-notation/
 * Primary idea: Push a number to a stack and pop two for operation when encounters a operator
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class EvaluateReversePolishNotation {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        
        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
            } else {
                let post = stack.removeLast()
                let prev = stack.removeLast()
                
                stack.append(operate(prev, post, token))
            }
        }
        
        return stack.first ?? 0
    }
    
    fileprivate func _operate(_ prev: Int, _ post: Int, _ token: String) -> Int{
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