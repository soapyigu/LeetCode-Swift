/**
 * Question Link: https://leetcode.com/problems/find-all-anagrams-in-a-string/description/
 * Primary idea: Slide window and use left and right point to maintain, and to compare p and substring s.
 *
 * Time Complexity: O(n), n stands for number of s
 *                  Space Complexity: O(n)
 */

 extension Dictionary where Key == Character, Value == Int  {
  func isSame(_ dictionary: [Character: Int]) -> Bool {
    for (key, value) in self {
      if dictionary[key] != value {
        return false
      }
    }
    return true
  }
}

class FindAllAnagramInString {

    func findAnagrams(_ s: String, _ p: String) -> [Int] {
      var anas = [Int]()

      if s == "" || p == "" {
        return anas
      }

      var dp = [Character: Int]()
      for c in p {
        dp[c] = (dp[c] ?? 0) + 1
      }

      var d = [Character: Int]()

      var (left, right) = (0, 0)

      for c in s {
        d[c] = (d[c] ?? 0) + 1
        right += 1

        if right - left == p.count {
          if dp.isSame(d) {
            anas.append(left)
          }

          let cc = s[s.index(s.startIndex, offsetBy: left)]
          if d[cc] != nil {
            d[cc]! -= 1
          }
          left += 1
        }
      }
      return anas
    }

}
