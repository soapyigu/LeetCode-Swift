/**
 * Question Link: https://leetcode.com/problems/course-schedule-ii/
 * Primary idea: Topological sort, use indegree of a graph and BFS to solve the problem
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class CourseScheduleII {
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        var inDegrees = Array(repeating: 0, count: numCourses), fromTo = [Int: [Int]]()
        var coursesCouldTake = [Int](), queue = [Int]()
        
        // init graph
        for prerequisite in prerequisites {
            fromTo[prerequisite[1], default: []].append(prerequisite[0])
            inDegrees[prerequisite[0]] += 1
        }
        
        // BFS
        for course in 0..<numCourses {
            if inDegrees[course] == 0 {
                queue.append(course)
            }
        }
        
        while !queue.isEmpty {
            let currentCourse = queue.removeFirst()
            coursesCouldTake.append(currentCourse)
            
            guard let toCourses = fromTo[currentCourse] else {
                continue
            }
            
            toCourses.forEach { 
                inDegrees[$0] -= 1 
                
                if inDegrees[$0] == 0 {
                    queue.append($0)
                }
            }
        }
    
        return coursesCouldTake.count == numCourses ? coursesCouldTake : [Int]()
    }
}