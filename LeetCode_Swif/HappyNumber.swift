/**
 * Question Link: https://leetcode.com/problems/happy-number/
 * Primary idea: Use a set to help determine if it goes to a cycle
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class HappyNumber {
    func isHappy(n: Int) -> Bool {
        var set = Set<Int>()
        var num = n
        
        while num != 1 {
            guard !set.contains(num) else {
                return false
            }
            set.insert(num)
            
            var temp = 0
            while num != 0 {
                temp += (num % 10) * (num % 10)
                num = num / 10
            }
            num = temp
        }
        
        return true
    }
}