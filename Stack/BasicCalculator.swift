/**
 * Question Link: https://leetcode.com/problems/basic-calculator/
 * Primary idea: Use a stack to save sign, then determines whether sign inversion is currently required
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class BasicCalculator {
    func calculate(_ s: String) -> Int {
        var result = 0
        var num = 0
        var sign = 1
        var stack = [sign]
        
        for char in s {
            switch char {
            case "+", "-":
                result += num * sign
                sign = stack.last! * (char == "+" ? 1 : -1)
                num = 0
            case "(":
                stack.append(sign)
            case ")":
                stack.removeLast()
            case " ":
                break
            default:
                num = num * 10 + char.wholeNumberValue!
            }
        }
        
        return result + num * sign
    }
}
