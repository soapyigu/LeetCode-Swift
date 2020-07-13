/**
 * Question Link: https://leetcode.com/problems/random-pick-with-weight/
 * Primary idea: Random select a number from sum of the array, and search the first number 
 *               greater than the number in sums array constructed from the original array.
 *
 * Time Complexity: O(logn), Space Complexity: O(n)
 */


class RandomPickWeight {
    
    var sums: [Int] 

    init(_ w: [Int]) {
        sums = w
        
        for i in 1..<w.count {
            sums[i] += sums[i - 1] 
        }
    }
    
    func pickIndex() -> Int {
        guard let sum = sums.last else {
            return -1
        }
        
        return findFirstGreaterThan(Int.random(in: 0..<sum))
    }
    
    private func findFirstGreaterThan(_ num: Int) -> Int {
        var left = 0, right = sums.count - 1
        
        while left < right {
            let mid = (right - left) / 2 + left
            if sums[mid] > num {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        return left
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(w)
 * let ret_1: Int = obj.pickIndex()
 */