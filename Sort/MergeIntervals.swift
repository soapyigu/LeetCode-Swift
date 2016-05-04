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
        if intervals.count <= 1 {
            return intervals
        }
    
        var intervals = intervals.sort(sortIntervals)

        var res = [Interval]()
        res.append(intervals[0])
        
        for i in 1 ..< intervals.count {
            var last = res[res.count - 1]
            var current = intervals[i]
            if current.start > last.end {
                res.append(current)
            } else {
                last.end = max(last.end, current.end)
            }
        }
        
        return res
    }
    
    private func sortIntervals(p: Interval, q: Interval) -> Bool {
        if p.start != q.start {
            return p.start < q.start
        } else {
            return p.end < q.end
        }
    }
}