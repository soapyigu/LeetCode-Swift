/**
 * Question Link: https://leetcode.com/problems/frog-jump/
 * Primary idea: Dynamic Programming, a dictionary to keep all steps that the position 
 *               can jump, and a dp array to keep max step that the position can take
 * Time Complexity: O(n^2), Space Complexity: O(n)
 *
 */

class FrogJump {
    func canCross(_ stones: [Int]) -> Bool {
        guard stones.count > 1 else {
            return true
        }
    
        var indexSteps = [Int: Set<Int>](), maxStep = Array(repeating: 0, count: stones.count)
        var k = 0
        
        insert(&indexSteps, 0, 0)
        
        for i in 1 ..< stones.count {
            while maxStep[k] + 1 < stones[i] - stones[k] {
                k += 1
            }
            for j in k ..< i {
                let distance = stones[i] - stones[j]
                
                if let steps = indexSteps[j], steps.contains(distance - 1) || steps.contains(distance) || steps.contains(distance + 1) {
                
                    insert(&indexSteps, distance, i)
                    maxStep[i] = max(maxStep[i], distance)
                }
            }
        }
        
        return maxStep.last! > 0
    }
    
    private func insert(_ dict: inout [Int: Set<Int>], _ num: Int, _ index: Int) {
        if dict[index] != nil {
            dict[index]!.insert(num)
        } else {
            var set = Set<Int>()
            set.insert(num)
            dict[index] = set
        }
    }
}
