/**
 * Question Link: https://leetcode.com/problems/reverse-integer/
 * Primary idea: Using % 10 to reversely iterate through digits of the number, 
 *               and use * 10 to update the result accordingly
 * Note: Handle integer overflow at proper time
 * Time Complexity: O(n), Space Complexity: O(1)
 */
 
 class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        var res = 0
        var x = x
        while x != 0 {
            if res > Int(Int32.max) / 10 || res < Int(Int32.min) / 10 {
                return 0
            }
            res = res * 10 + x % 10
            x = x / 10
        }
        return res
    }
}
