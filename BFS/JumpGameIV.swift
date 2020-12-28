class Solution {
    func minJumps(_ arr: [Int]) -> Int {
        var map = [Int: [Int]]()
        for i in 0..<arr.count {
            map[arr[i], default: [Int]()].append(i)
        }
        
        var visited = Array(repeating: false, count: arr.count)
        visited[0] = true
        var steps = [0]
        
        func appendQueue(_ index: Int) {
            if !visited[index] {
                steps.append(index)
                visited[index] = true
            }
        }
        
        for currentStep in 1...arr.count {
            let doSteps = steps
            steps = []
            for num in doSteps {
                // Reach
                if num == (arr.count-1) { 
                    return currentStep-1 
                }
                
                // Right 
                if num < (arr.count-1) {
                    appendQueue(num+1)
                }
                
                // Left
                if num > 0 {
                    appendQueue(num-1)
                }
                
                // Tail
                let datas = map[arr[num]]!
                for data in datas {
                    appendQueue(data)
                }
                map[arr[num]] = []
            }
        }
        
        return 0
    }
}