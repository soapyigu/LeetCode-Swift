/**
 * Question Link: https://leetcode.com/problems/task-scheduler/
 * Primary idea: Most frequent character should be put at head of each chunk and join the chunks with less frequent one.
 *
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

 class TaskScheduler {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        guard tasks.count > 0 else {
            return 0
        }
        
        let taskFreqs = Dictionary(tasks.map { ($0, 1) }, uniquingKeysWith: +)
        let sortedTasks = taskFreqs.keys.sorted { return taskFreqs[$0]! > taskFreqs[$1]! }
        var mostFreqCount = 0
         
        for sortedTask in sortedTasks {
            if taskFreqs[sortedTask] != taskFreqs[sortedTasks[0]] {
                break
            } 
            
            mostFreqCount += 1
        }
        
        return max(tasks.count, (taskFreqs[sortedTasks[0]]! - 1) * (n + 1) + mostFreqCount)
    }
}