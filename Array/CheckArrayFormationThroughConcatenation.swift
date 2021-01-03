class Solution {
    func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
        var map = pieces.reduce(into: [Int:[Int]]()) { $0[arr.firstIndex(of: $1[0]) ?? 0] = $1 }
        var smap = Array(map.sorted { $0.0 < $1.0 }.flatMap{ $0.1 })
        
        return arr.hashValue == smap.hashValue
    }
}