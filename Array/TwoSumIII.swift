/**
 * Question Link: https://leetcode.com/problems/two-sum-iii-data-structure-design/
 * 
 * Note: This answer offers a different solution instead of the one requsted by leetcode.
 *       Assuming the use case is find API is called many more times than add API.
 *       For the answer accepted by leetcode, you could reference Two Sum and Two Sum II.
 *
 * Primary idea: Use a set for all two sums value, and array to keep all numbers added.
 * Time Complexity: add - O(n), find - O(1), Space Complexity: O(n)
 */

class TwoSumIII {

    var nums: [Int]
    var twoSums: Set<Int>()
    
    /** Initialize your data structure here. */
    init() {
        nums = [Int]()
        twoSums = Set<Int>()
    }
    
    /** Add the number to an internal data structure.. */
    func add(_ number: Int) {
        nums.forEach { twoSums.insert($0 + number) }
        nums.append(number)
    }
    
    /** Find if there exists any pair of numbers which sum is equal to the value. */
    func find(_ value: Int) -> Bool {
        return twoSums.contains(value)
    }
}