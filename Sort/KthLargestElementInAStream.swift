final class KthLargest {
    
    private let k: Int
    private var nums: [Int]

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        self.nums = nums.sorted { $1 < $0 }
    }
    
    func add(_ val: Int) -> Int {
        self.nums.append(val)
        
        for i in 0..<nums.count {
            if nums[i] < val {
                nums.removeLast()
                nums.insert(val, at: i)
                break
            }
        }
        return self.nums[self.k-1]
    }
}
