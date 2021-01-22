class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var heights = [heights, [0]].flatMap{ $0 }
        var result = 0
        var stacks = [Int]()
        
        for i in 0..<heights.count {
            if !stacks.isEmpty && heights[i] < heights[stacks.last!] {
                repeat {
                    let val = stacks.popLast()!
                    result = max(result, heights[val] * (stacks.isEmpty ? i : i-stacks.last!-1))
                } while !stacks.isEmpty && heights[i] < heights[stacks.last!]
            }
            stacks.append(i)
        }
        
        return result
    }
}