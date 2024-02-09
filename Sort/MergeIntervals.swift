/**
 * Question Link: https://leetcode.com/problems/merge-intervals/
 * Primary idea: Sort the original intervals and then append them one by one
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 * Definition for an interval.
 * public class Interval {
 *   public var start: Int
 *   public var end: Int
 *   public init(_ start: Int, _ end: Int) {
 *     self.start = start
 *     self.end = end
 *   }
 * }
 */

class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { return $0[0] < $1[0] }
        var res = [intervals[0]]

        for interval in intervals[1..<intervals.count] {
            
            let lastEnd = res[res.count - 1][1]

            if lastEnd < interval[0] {
                res.append(interval)
            } else {
                res[res.count - 1][1] = max(res[res.count - 1][1], interval[1])
            }
        }

        return res
    }
}