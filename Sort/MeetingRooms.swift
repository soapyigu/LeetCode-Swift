/**
 * Question Link: https://leetcode.com/problems/meeting-rooms/
 * Primary idea: Sort and traverse, find if any conflicts exist
 * Time Complexity: O(nlogn), Space Complexity: O(1)
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
 
class MeetingRooms {
    func canAttendMeetings(intervals: [Interval]) -> Bool {
        guard intervals.count > 1 else {
            return true
        }
        
        var intervals = intervals.sort() {
            if $0.start != $1.start {
                return $0.start < $1.start
            } else {
                return $0.end < $1.end
            }
        }
        
        for i in 0 ..< intervals.count - 1 {
            if intervals[i].end > intervals[i + 1].start {
                return false
            }
        }
        
        return true
    }
}