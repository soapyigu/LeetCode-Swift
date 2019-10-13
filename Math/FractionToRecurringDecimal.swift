/**
 * Question Link: https://leetcode.com/problems/fraction-to-recurring-decimal/
 * Primary idea: Get quotient and remainder, if remainder exists, then it is repeating.
 * Time Complexity: O(logn), Space Complexity: O(n)
 *
 */

class FractionToRecurringDecimal {
    func fractionToDecimal(_ numerator: Int, _ denominator: Int) -> String { 
        guard numerator != 0 else {
            return "0"
        }
        guard denominator != 0 else {
            fatalError("Invalid Denominator")
        }
        
        var isPositive = (numerator < 0) == (denominator < 0), numerator = abs(numerator), res = "", numToIndex = [Int: Int](), hasDot = false
        let denominator = abs(denominator)
        
        while numerator != 0 {
            
            let (q, r) = numerator.quotientAndRemainder(dividingBy: denominator)
            
            if let numIndex = numToIndex[numerator]{
                res.insert("(", at: res.index(res.startIndex, offsetBy: numIndex))
                res.append(")")
                break
            } else {
                res += "\(q)"
                
                if !hasDot && r != 0 {
                    res.append(".")
                    hasDot = true
                } else {
                    // update numToIndex
                    numToIndex[numerator] = res.count - 1
                }
                
                // update reminder
                numerator = r * 10
            }
        }
        
        return isPositive ? res : "-" + res
    }
}