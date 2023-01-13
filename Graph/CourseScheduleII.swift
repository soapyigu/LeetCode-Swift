/**
 * Question Link: https://leetcode.com/problems/course-schedule-ii/
 * Primary idea: Topological sort, use indegree of a graph and BFS to solve the problem
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class CourseScheduleII {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var indegrees = Array(repeating: 0, count: numCourses), toCourses = [Int: [Int]]()

        for pres in prerequisites {
            indegrees[pres[0]] += 1
            toCourses[pres[1], default: []].append(pres[0])
        }

        var queue = (0..<numCourses).filter { indegrees[$0] == 0 }, result = [Int]()

        while !queue.isEmpty {
            let course = queue.removeFirst()

            result.append(course)

            for toCourse in toCourses[course] ?? [] {
                indegrees[toCourse] -= 1
                if indegrees[toCourse] == 0 {
                    queue.append(toCourse)
                }
            }
        }

        return result.count == numCourses ? result : [Int]()
    }
}
