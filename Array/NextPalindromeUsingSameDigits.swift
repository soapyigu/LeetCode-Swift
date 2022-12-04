/**
 * Question Link: https://leetcode.com/problems/next-palindrome-using-same-digits/
 * Primary idea: Figure out the first half's next permutation, then double it to the result.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class NextPalindromeUsingSameDigits {
    func nextPalindrome(_ num: String) -> String {
        let num = Array(num)
        var firstHalf = num[0..<num.count / 2].compactMap { Int(String($0)) }
        
        if num.count <= 1 || !nextPermutation(&firstHalf) {
            return ""
        }
        
        let firstHalfStr = firstHalf.map { String($0) }.joined()
        
        if num.count % 2 == 0 {
            return firstHalfStr + firstHalfStr.reversed()
        } else {
            return firstHalfStr + String(num[num.count / 2]) + firstHalfStr.reversed()
        }
    }

    private func nextPermutation(_ nums: inout [Int]) -> Bool {
        var violateIdx = -1
        
        for i in (1..<nums.count).reversed() {
            if nums[i] > nums[i - 1] {
                violateIdx = i - 1
                break
            }
        }
        
        if violateIdx == -1 {
            nums.reverse()
            return false
        }
        
        for i in ((violateIdx + 1)..<nums.count).reversed() {
            if nums[i] > nums[violateIdx] {
                swap(&nums, i, violateIdx)
                break
            }
        }
        
        nums[(violateIdx + 1)...].reverse()
        return true
    }

    private func swap(_ nums: inout [Int], _ l: Int, _ r: Int) {
        (nums[l], nums[r]) = (nums[r], nums[l])
    }
}
