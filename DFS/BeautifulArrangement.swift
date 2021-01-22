class Solution {
    func countArrangement(_ n: Int) -> Int {
        var arr = Array(repeating: false, count: n)
        return countArr(1, &arr)
    }
    
    func countArr(_ c: Int, _ arr: inout [Bool]) -> Int {
        if c > arr.count { return 1 }
        
        var count = 0
        for x in 0..<arr.count {
            if !arr[x] && ((x+1) % c == 0 || c % (x+1) == 0) {
                arr[x] = true
                count += countArr(c+1, &arr)
                arr[x] = false
            }
        }
        
        return count
    }
}