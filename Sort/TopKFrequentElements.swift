/**
 * Question Link: https://leetcode.com/problems/top-k-frequent-elements/
 * Primary idea: Use a map to track frenquency of each number, then sort keys based on values
 *
 * Time Complexity: O(nlogn), Space Complexity: O(n)
 *
 */

class TopKFrequentElements {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        let numFreq = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
        
        let sortedNums = numFreq.keys.sorted {
            return numFreq[$0]! > numFreq[$1]!
        }
        
        return Array(sortedNums[0..<k])
    }
}
