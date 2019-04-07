/**
 * Question Link: https://leetcode.com/problems/sort-array-by-parity/
 * Primary idea: traverse the array and insert Even into the 0 th index and odd into the last index
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class SortArrayByParity {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var outputArray = [Int]()
        for (_,value) in A.enumerated(){
            outputArray.insert(value, at: value % 2 == 0 ? 0 : outputArray.count)
        }
        
        return outputArray
    }
}
