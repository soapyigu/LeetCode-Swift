/**
 * Question Link: https://leetcode.com/problems/fizz-buzz/
 * Primary idea: Iterate the array and handle multiples of 3 or 5 separately.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class FizzBuzz {
    func fizzBuzz(_ n: Int) -> [String] {
        var res = [String]()
    
        if n < 0 {
            return res
        }
        
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                res.append("FizzBuzz")
            } else if i % 3 == 0 {
                res.append("Fizz")
            } else if i % 5 == 0 {
                res.append("Buzz")
            } else {
                res.append("\(i)")
            }
        }
        
        return res
    }
}