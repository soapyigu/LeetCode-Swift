class ArrayPartitionI {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var arr = nums
        arr = arr.sorted()
        var res = 0
        for i in 0..<arr.count {
            if i & 1 != 0 {
                res += min(arr[i], arr[i - 1])
            }
        }
        return res
    }
}

class ArrayPartitionI_2 {
    func arrayPairSum(_ nums: [Int]) -> Int {
        return nums.sorted(by: <).enumerated()
            .flatMap { $0 % 2 == 0 ? $1 : nil }
            .reduce(0) { $0 + $1 }
    }
}
