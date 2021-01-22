class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var rest = [Int: Int]()
        var result = 0
        for num in nums {
            if let count = rest[k-num], count > 0 {
                rest[k-num] = count-1
                result += 1
            } else {
                rest[num, default: 0] += 1
            }
        }
        
        return result
    }
}