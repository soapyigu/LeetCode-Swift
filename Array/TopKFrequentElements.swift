/**
 * Question Link: https://leetcode.com/problems/top-k-frequent-elements/
 * Primary idea: Use a map to track frenquency of each number, then sort keys based on values
 *
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

class TopKFrequentElements {
    func topKFrequent(nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
  
        for num in nums {
            guard let times = map[num] else {
                map[num] = 1
                continue
            }
            map[num] = times + 1
        }
  
        let keys = Array(map.keys)
        var sortedKeys = keys.sort() {
            let value1 = map[$0]
            let value2 = map[$1]
            return value1 > value2
        }
  
        return Array(sortedKeys[0..<k])
    }
}