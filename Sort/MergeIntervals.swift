/**
 * Question Link: https://leetcode.com/problems/merge-intervals/
 * Primary idea: Sort intervals by leading integer in ascending order and append based on their leading and trailing integers.
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else { return intervals }
        let intervals = intervals.sorted { $0[0] < $1[0] }
        var ret: [[Int]] = []
        var i = 1
        var last = intervals[0]
        while i < intervals.endIndex {
            let curr = intervals[i]
            if curr[0] <= last[1] {
                if curr[1] > last[1] {
                    last[1] = curr[1]
                }
            } else {
                ret.append(last)
                last = curr
            }
            guard i != intervals.endIndex - 1 else { ret.append(last); break }
            i += 1
        }
        return ret
    }
}
