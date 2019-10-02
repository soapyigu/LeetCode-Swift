/**
 * Question Link: https://leetcode.com/problems/insert-delete-getrandom-o1/
 * Primary idea: Using an array and dictionary since adding or removing at the end of array is constant.
 * Time Complexity: O(1), Space Complexity: O(n)
 *
 */

class RandomizedSet {
    
    var numToIndex: [Int: Int]
    var nums: [Int]

    /** Initialize your data structure here. */
    init() {
        numToIndex = [Int: Int]()
        nums = [Int]()
    }
    
    /** Inserts a value to the set. Returns true if the set did not already contain the specified element. */
    func insert(_ val: Int) -> Bool {
        if let _ = numToIndex[val] {
            return false
        } else {
            numToIndex[val] = nums.count
            nums.append(val)
            
            return true
        }
    }
    
    /** Removes a value from the set. Returns true if the set contained the specified element. */
    func remove(_ val: Int) -> Bool {
        if let index = numToIndex[val], let last = nums.last {
            numToIndex[last] = index
            numToIndex[val] = nil
            
            nums.swapAt(index, nums.count - 1)
            nums.removeLast()
            
            return true
        } else {
            return false
        }
    }
    
    /** Get a random element from the set. */
    func getRandom() -> Int {
        guard let randomElement = nums.randomElement() else {
            fatalError("Empty set!")
        }
        
        return randomElement
    }
}