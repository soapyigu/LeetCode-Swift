/**
 * Question Link: https://leetcode.com/problems/student-attendance-record-i/
 * Primary idea: Iterate the string and check late & absent counts to check the eligibility.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class StudentAttendanceRecordI {
    func checkRecord(_ s: String) -> Bool {
        var ACount = 0, LCount = 0
        let sChars = Array(s)
        
        for i in 0..<s.count {
            if sChars[i] == "A" {
                ACount += 1
                
                if ACount >= 2 {
                    return false
                }
            } else if sChars[i] == "L" {
                if i > 0 && sChars[i - 1] == "L" {
                    LCount += 1
                    
                    if LCount >= 3 {
                        return false
                    }
                } else {
                    LCount = 1
                }
            }
        }
        
        return true
    }
}