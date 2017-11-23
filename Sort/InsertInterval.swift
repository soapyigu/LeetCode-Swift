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
class Solution {
    func insert(_ intervals: [Interval], _ newInterval: Interval) -> [Interval] {
        var index = 0
        var result : [Interval] = []
        var tempInterval = Interval(newInterval.start, newInterval.end)
        
        while index < intervals.count && newInterval.start > intervals[index].end {
            result.append(intervals[index])
            index += 1
        }
        
        while index < intervals.count && newInterval.end >= intervals[index].start {
            var minStart = min(tempInterval.start, intervals[index].start)
            var maxEnd = max(tempInterval.end, intervals[index].end)
            tempInterval = Interval(minStart, maxEnd)
            index += 1
        }
        result.append(tempInterval)
        
        for i in index ..< intervals.count {
            result.append(intervals[i])
        }
        
        return result
    }
}
