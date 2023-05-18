func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
    var combinations: [[Int]] = []
    
    for n in nums1 {
        for m in nums2 {
            combinations.append([n, m, n+m])
        }
    }
    
    let result: [[Int]] = combinations.sorted(by: {
        $0[2] < $1[2]
    })
    
    var end = k
    if combinations.count < k {
        end = combinations.count
    }
    
    var answer: [[Int]] = []
    
    for l in 0..<end {
        answer.append([result[l][0], result[l][1]])
    }
    return answer
}