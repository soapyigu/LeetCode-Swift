/**
 * Question Link: https://leetcode.com/problems/top-k-frequent-elements/
 * Primary idea: Use a map to track frenquency of each number, then sort keys based on values
 *
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

class TopKFrequentElements {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var combinations = [Int: Int]()

    for n in nums {
      if let val = combinations[n] {
        combinations[n] = val + 1
      } else {
        combinations[n] = 1
      }
    }
		
    let highToLow = combinations.sorted(by: { $1.value < $0.value })
    var result = [Int]()
		
    for m in 0..<k {
      result.append(highToLow[m].key)
    }
    return result
  }
}
