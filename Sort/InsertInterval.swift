/**
 * Question Link: https://leetcode.com/problems/insert-interval/
 * Primary idea: First, check if nuewInterval's start is larger than one interval's end. 
 *                      If so, save the index, otherwise save intervals
 *               Second, keep updating a new interval if nuewInterval's end is larger then one interval's start
 *                      If cannot find more, append the new interval to the result array
 *               Final Step, append the rest intervals to the result array
 *
 * Time Complexity: O(n), Space Complexity: O(1), 
 *
 * Definition for an interval.
 * public class Interval {
 *     public var start: Int
 *     public var end: Int
 *     public init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class InsertInterval {
    func insert(_ intervals: [Interval], _ newInterval: Interval) -> [Interval] {
        var res = [Interval](), insertIdx = 0

        for (i, interval) in intervals.enumerated() {
            if interval.isOverlap(with: newInterval) {
                newInterval.start = min(newInterval.start, interval.start)
                newInterval.end = max(newInterval.end, interval.end)
            } else {
                if interval.end < newInterval.start {
                    insertIdx += 1
                }

                res.append(interval)
            }
        }

        res.insert(newInterval, at: insertIdx)

        return res
    }

    extension Interval {
        func isOverlap(with interval: Interval) -> Bool {
            return start <= interval.end && end >= interval.start
        }
    }
}
