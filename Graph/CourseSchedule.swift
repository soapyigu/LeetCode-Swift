/**
 * Question Link: https://leetcode.com/problems/course-schedule/
 * Primary idea: Topological sort, use indegree of a graph and BFS to solve the problem
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class CourseSchedule {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var inDegrees = Array(repeating: 0, count: numCourses), toCourses = [Int: [Int]]()
        
        for courses in prerequisites {
            inDegrees[courses[0]] += 1
            toCourses[courses[1], default:[]].append(courses[0])
        }
        
        var queue = (0..<numCourses).filter { inDegrees[$0] == 0 }, validCourseCount = 0
        
        while !queue.isEmpty {
            let course = queue.removeFirst()
            
            validCourseCount += 1
            
            guard let toCourses = toCourses[course] else {
                continue
            }
            
            for toCourse in toCourses {
                inDegrees[toCourse] -= 1
                if inDegrees[toCourse] == 0 {
                    queue.append(toCourse)
                }
            }
        }
        
        return validCourseCount == numCourses
    }
}