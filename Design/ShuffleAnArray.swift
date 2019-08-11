/**
 * Question Link: https://leetcode.com/problems/shuffle-an-array/
 * Primary idea: Iterate through the array and swap the value at current index 
 *               with that at a random selected index
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class ShuffleAnArray {
    var originalNums: [Int]

    init(_ nums: [Int]) {
        originalNums = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        return originalNums
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        // note: Apple have an API called shuffled() for an array, complexity is O(n)
        
        let count = originalNums.count
        var nums = originalNums
        
        for i in 0..<count {
            let indexRandomSelected = Int.random(in: 0..<count)
            (nums[i], nums[indexRandomSelected]) = (nums[indexRandomSelected], nums[i])
        }
        
        return nums
    }
}
