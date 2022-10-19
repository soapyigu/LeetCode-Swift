/**
 * Question Link: https://leetcode.com/problems/employee-free-time/
 * Primary idea: Combine and merge sorted arrays. Then iterate through it to get offset between every two elements.
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 * Definition for an Interval.
 * public class Interval {
 *     public var start: Int
 *     public var end: Int
 *     public init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class EmployeeFreeTime {
    func employeeFreeTime(_ schedule: [[Interval]]) -> [Interval] {
        let intervals = mergeIntervals(combineIntervals(schedule))
        var res = [Interval]()

        for i in 1..<intervals.count {
            res.append(Interval(intervals[i - 1].end, intervals[i].start))
        }

        return res
    }

    private func mergeIntervals(_ intervals: [Interval]) -> [Interval] {
        var res = [Interval]()

        for interval in intervals {
            if let last = res.last, last.end >= interval.start {
                res.removeLast()
                res.append(Interval(last.start, max(last.end, interval.end))) 
            } else {
                res.append(interval)
            }
        }

        return res
    }

    private func combineIntervals(_ schedule: [[Interval]]) -> [Interval] {
        var res = schedule[0]

        for i in 1..<schedule.count {
            res = combineTwoIntervals(res, schedule[i])
        }

        return res
    }

    private func combineTwoIntervals(_ l: [Interval], _ r: [Interval]) -> [Interval] {
        var res = [Interval](), i = 0, j = 0

        while i < l.count || j < r.count {
            if i == l.count {
                res.append(r[j])
                j += 1
            } else if j == r.count {
                res.append(l[i])
                i += 1
            } else {
                if l[i].start <= r[j].start {
                    res.append(l[i])
                    i += 1
                } else {
                    res.append(r[j])
                    j += 1
                }
            }
        }

        return res
    }
}
