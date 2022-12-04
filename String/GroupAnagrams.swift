/**
 * Question Link: https://leetcode.com/problems/anagrams/
 * Primary idea: Iterate the string array and categories strings with the same sorted one
 *
 * Time Complexity: O(nmlogm), n stands for number of words, m stands for the length of a word
 * Space Complexity: O(n)
 */

class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        return Array(Dictionary(strs.map { (String($0.sorted()), [$0]) }, uniquingKeysWith: +).values)
    }
}
