/**
 * Question Link: https://leetcode.com/problems/subarrays-with-k-different-integers/
 * Primary idea: Sliding window. 
 * Assuming i1 < i2 < i3, (i1,j) and (i3,j) are valid, (i2,j) is definitely valid. 
 * However, assuming i3 < i4, (i4,j) is is only invalid when the distance between i4 and j is less than k. 
 * Using 2 sliding windows could solve the problem.
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class SubarraysKDifferentIntegers {
    func subarraysWithKDistinct(_ nums: [Int], _ k: Int) -> Int {
        var left1 = 0, left2 = 0, window1 = Window(), window2 = Window(), uniqueSubarrayCount = 0
    
        for right in 0..<nums.count {
            let num = nums[right]
            window1.add(num)
            window2.add(num)

            while window1.uniqueNum > k {
                window1.remove(nums[left1])
                left1 += 1
            }

            while window2.uniqueNum >= k {
                window2.remove(nums[left2])
                left2 += 1
            }

            uniqueSubarrayCount += (left2 - left1)
        }

        return uniqueSubarrayCount
    }

    class Window {
        var uniqueNum = 0
        private var numFreq = [Int: Int]()

        func add(_ num: Int) {
            numFreq[num, default: 0] += 1
            if numFreq[num] == 1 {
                uniqueNum += 1
            }
        }

        func remove(_ num: Int) {
            if let freq = numFreq[num] {
                numFreq[num] = freq - 1

                if freq == 1 {
                    uniqueNum -= 1
                }
            }
        }
    }
}

