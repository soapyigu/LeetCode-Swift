/**
 * Question Link: https://leetcode.com/problems/asteroid-collision/
 * Primary idea: traverse the array and handle positive and negative separately
 *
 * Time Complexity: O(n), Space Complexity: O(n)
 *
 */

class AsteroidCollision {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var positives = [Int]()
        var negatives = [Int]()
        
        for asteroid in asteroids {
            if asteroid > 0 {
                positives.append(asteroid)
            } else {
                var shouldAppendToNegative = true
                
                while positives.count > 0 {
                    if positives.last! > -asteroid {
                        shouldAppendToNegative = false
                        break
                    } else {
                        let last = positives.removeLast()
                        
                        if -asteroid == last {
                            shouldAppendToNegative = false
                            break
                        }
                    }
                }
                
                if shouldAppendToNegative {
                    negatives.append(asteroid)
                }
            }
        }
        
        return negatives + positives
    }
}