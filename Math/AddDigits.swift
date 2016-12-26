/**
 * Question Link: https://leetcode.com/problems/add-digits/
 * Primary idea: Transform number into array of string and sum the values recursively until the result is achieved
 *
 * Time Complexity: O(1), Space Complexity: O(1)
 *
 */

import UIKit

class Digits {
    func add (num: Int) -> Int {
        let numString = String(num)
        guard numString.characters.count > 1 else { return num }
        
        let array = Array(numString.characters).map { String($0) }
        
        let sum = array.reduce(0) { $0.0 + Int($0.1)! }
        
        return add(num: sum)
    }
}
