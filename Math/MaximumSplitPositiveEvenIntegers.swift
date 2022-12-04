/**
 * Question Link: https://leetcode.com/problems/maximum-split-of-positive-even-integers/
 * Primary idea: Greedy. The most split should contain numbers as small as possible.
 * Time Complexity: O(logn), Space Complexity: O(1)
 *
 */

class MaximumSplitPositiveEvenIntegers {
    func maximumEvenSplit(_ finalSum: Int) -> [Int] {
        guard finalSum % 2 == 0 else { 
            return [] 
        }

        var res = [Int](), candidate = 2, currentSum = 0

        while (currentSum + candidate) <= finalSum {
            res.append(candidate)
            currentSum += candidate
            candidate += 2
        }
        res[res.count - 1] += finalSum - currentSum

        return res
    }
}
