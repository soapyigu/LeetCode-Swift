class Solution {
    func countVowelStrings(_ n: Int) -> Int {
        var curr = [0, 0, 0, 0, 1]
        
        for _ in 1..<n {
            var next = [Int]()
            var sum = 0
            for x in (0..<curr.count).reversed() {
                sum += curr[x]
                next.insert(sum, at:0)
            }
            curr = next
        }
        
        var result = 0
        for x in 0..<curr.count {
            result += curr[x] * (x+1)
        }
        return result
    }
}