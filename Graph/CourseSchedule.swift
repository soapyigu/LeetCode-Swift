/**
 * Question Link: https://leetcode.com/problems/course-schedule/
 * Primary idea: Topological sort, use indegree of a graph and BFS to solve the problem
 * 
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

 class CourseSchedule {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var inDegrees = Array(repeating: 0, count: numCourses), fromTo = [Int: [Int]]()
        var coursesCouldTake = [Int](), queue = [Int]()
        
        // init graph
        for prerequisite in prerequisites {
            fromTo[prerequisite[0], default: []].append(prerequisite[1])
            inDegrees[prerequisite[1]] += 1
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
    
        return coursesCouldTake.count == numCourses
    }
}