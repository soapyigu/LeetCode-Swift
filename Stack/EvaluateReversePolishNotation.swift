/**
 * Question Link: https://leetcode.com/problems/evaluate-reverse-polish-notation/
 * Primary idea: Push a number to a stack and pop two for operation when encounters a operator
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class EvaluateReversePolishNotation {
    var stack = [Int]()
        
        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
            } else {
                guard let postNum = stack.popLast(), let prevNum = stack.popLast() else {
                    fatalError("Invalid Input")
                }
                
                stack.append(operate(token, prevNum, postNum))
            }
        }
        
        if let last = stack.last {
            return last
        } else {
            fatalError("Invalid Input")
        }
    }
    
    private func operate(_ token: String, _ prevNum: Int, _ postNum: Int) -> Int {
        switch token {
            case "+":
                return prevNum + postNum
            case "-":
                return prevNum - postNum
            case "*":
                return prevNum * postNum
            case "/":
                return prevNum / postNum
            default:
                fatalError("Invalid Input") 
        }
    }
}
