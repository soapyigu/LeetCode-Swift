/**
 * Question Link: https://leetcode.com/problems/meeting-rooms-ii/
 * Primary idea: Sort start and end separately, then count conflicts
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

class MeetingRoomsII {
    func minMeetingRooms(_ intervals: [Interval]) -> Int {
        let starts = intervals.map { interval in interval.start }.sorted()   
        let ends = intervals.map { interval in interval.end }.sorted()
        var i = 0, j = 0, count = 0
        
        while i < starts.count && j < ends.count {
            if starts[i] < ends[j] {
                count += 1
                i += 1
            } else {
                i += 1
                j += 1
            }
        } 
        
        return count
    }
}