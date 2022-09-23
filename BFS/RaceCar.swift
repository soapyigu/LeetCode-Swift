/**
 * Question Link: https://leetcode.com/problems/race-car/
 * Primary idea: BFS to go over A or R at a specific step. Only add R to the queue when necessary.
 * 
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 */

class RaceCar {
    func racecar(_ target: Int) -> Int {
        let startNode = Node(speed: 1, position: 0)
        var queue = [startNode], len = 0, isVisited = Set<Node>()
        
        while !queue.isEmpty {
            let size = queue.count
            
            for _ in 0..<size {
                let node = queue.removeFirst()
                
                if node.position == target {
                    return len
                }
                
                if isVisited.contains(node) {
                    continue
                }
                
                isVisited.insert(node)
                
                let ANode = Node(speed: node.speed * 2, position: node.position + node.speed)
                queue.append(ANode)
               
                if shouldRevert(node, target) {
                    let RNode = Node(speed: node.speed > 0 ? -1 : 1, position: node.position)
                    queue.append(RNode)
                }
                    
            }
            
            len += 1
        }
        
        return len
    }
    
    private func shouldRevert(_ node: Node, _ target: Int) -> Bool {
        return (node.position + node.speed > target && node.speed > 0) || (node.position + node.speed < target && node.speed < 0)
    }
    
    struct Node: Hashable {
        let speed: Int
        let position: Int
    }
}
