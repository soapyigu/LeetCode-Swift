/**
 * Question Link: https://leetcode.com/problems/course-schedule/
 * Primary idea: Kahn's Algorithms
 * 1) Create the graph
 * 2) Decorate each vertex with its in-degree
 * 3) Create a set of all sources
 * 4) While the set isn’t empty,
 *     i. Remove a vertex from the set and add it to the sorted list
 *     ii. For every edge from that vertex:
 *         - Decrement the in-degree of the destination node
 *         - Check all of its destination vertices and add them to the set if they have no incoming edges
 * Time Complexity: O(|E| + |V|), Space Complexity: O(n^2)
 * Recommand Reading: http://cs.brown.edu/courses/csci0160/lectures/14.pdf
 */
class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        // ATTENTION: if graph use [[Int]], will get 'memory limited exceed'
        var graph = [[UInt8]](repeatElement([UInt8](repeatElement(0, count: numCourses)), count: numCourses))
        var indegree = [Int](repeatElement(0, count: numCourses))
        
        // 1. Create the graph
        for i in 0 ..< prerequisites.count {
            let course = prerequisites[i][0]
            let pre = prerequisites[i][1]
            
            // 2. Decorate each vertex with its in-degree
            // Eliminate duplicate case
            if graph[pre][course] == 0 {
                indegree[course] += 1
            }
            graph[pre][course] = 1
        }
        
        // 3. Create a array of sources
        var sources = [Int]()
        for i in 0 ..< numCourses {
            if indegree[i] == 0 {
                sources.append(i)
            }
        }
        
        //var topoSortedList = [Int]()
        var count = 0
        while !sources.isEmpty {
            // 4.i. Remove a vertex from the set and add it to the sorted list
            let source = sources.popLast()
            //topoSortedList.append(source!)
            count += 1
            
            // 4.ii. Decrement the in-degree of the destination node
            for i in 0 ..< numCourses {
                if graph[source!][i] == 1 {
                    indegree[i] -= 1
                    // Check all of its destination vertices and add them to the set if they have no incoming edges
                    if indegree[i] == 0 {
                        sources.append(i)
                    }
                }
            }
        }
        
        //return topoSortedList.count == numCourses
        return count == numCourses
    }
}
