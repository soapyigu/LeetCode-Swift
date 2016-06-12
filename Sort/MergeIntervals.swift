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
    func merge(intervals: [Interval]) -> [Interval] {
        guard intervals.count > 1 else {
            return intervals
        }
    
        var intervals = intervals.sort() {
            if $0.start != $1.start {
                return $0.start < $1.start
            } else {
                return $0.end < $1.end
            }
        }

        var res = [Interval]()
        res.append(intervals[0])
        
        for i in 1..<intervals.count {
            let last = res[res.count - 1]
            let current = intervals[i]
            if current.start > last.end {
                res.append(current)
            } else {
                last.end = max(last.end, current.end)
            }
        }
        
        return res
    }
}