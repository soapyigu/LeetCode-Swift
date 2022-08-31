/**
 * Question Link: https://leetcode.com/problems/guess-number-higher-or-lower/
 * Primary idea: use binary search to find number
 * Time Complexity: O(logn), Space Complexity: O(1)
 *
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return    -1 if num is higher than the picked number
 *         1 if num is lower than the picked number
 *         otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution {
    func guessNumber(_ n: Int) -> Int {
        var start = 1
        var end = n

        while start <= end {
            let mid = start + (end - start) / 2
            let isGuessed = guess(mid)

            if isGuessed == 0 {
                return mid
            } else if isGuessed == -1 {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }

        return -1
    }
}
