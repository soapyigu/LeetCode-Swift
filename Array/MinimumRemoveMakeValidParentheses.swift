/**
 * Question Link: https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/
 * Primary idea: Count the number of left brackets and append to result accordingly. Remove unnecessary left brackets from most right.
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class MinimumRemoveMakeValidParentheses {
    func minRemoveToMakeValid(_ s: String) -> String {
        var leftCount = 0, res = Array("")
        
        for char in s {
            if char == "(" {
                leftCount += 1
                res.append(char)
            } else if char == ")" {
                if leftCount == 0 {
                    continue
                } else {
                    leftCount -= 1
                    res.append(char)
                }
            } else {
                res.append(char)
            }
        }
        
        // remove unnecessary left bracket
        if leftCount > 0 {
            var i = res.count - 1

            while i >= 0 {
                if res[i] == "(" {
                    res.remove(at: i)
                    leftCount -= 1

                    if leftCount == 0 {
                        break
                    }
                }

                i -= 1
            }
        }
        
        return String(res)
    }
}