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
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        let startingTimes = intervals.map { interval in interval[0] }.sorted()
        let endingTimes = intervals.map { interval in interval[1] }.sorted()
        let intervalsCount = intervals.count
        
        var i = 0, j = 0, meetingRoomsNum = 0
        
        while i < intervalsCount && j < intervalsCount {
            if startingTimes[i] < endingTimes[j] {
                meetingRoomsNum += 1
            } else {
                j += 1
            }
            
            i += 1
        }
        
        return meetingRoomsNum
    }
}
