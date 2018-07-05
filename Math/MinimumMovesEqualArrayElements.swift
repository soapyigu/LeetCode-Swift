/**
 * Question Link: https://leetcode.com/problems/minimum-moves-to-equal-array-elements/
 * Primary idea: Adding 1 to n - 1 elements is the same as subtracting 1 from one element, 
 *				 the best way is to make all the elements equal to the min element.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 */

class MinimumMovesEqualArrayElements {
    func minMoves(_ nums: [Int]) -> Int {
        let minNum = nums.min()!
        
        return nums.reduce(0) { total, num in total + num - minNum }
    }
}