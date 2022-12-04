/**
 * Question Link: https://leetcode.com/problems/range-module/
 * Primary idea: Sort ranges by left, query using binary search, remove to handle 4 cases separately.
 * Time Complexity: add - O(nlogn), query - O(logn), remove - O(n), Space Complexity: O(n)
 *
 */

class RangeModule {

    var sortedRanges: [(Int, Int)]

    init() {
        sortedRanges = [(Int, Int)]()
    }
    
    func addRange(_ left: Int, _ right: Int) {
        sortRanges(for: (left, right))
    }
    
    func queryRange(_ left: Int, _ right: Int) -> Bool {
        // binary search
        var l = 0, r = sortedRanges.count - 1

        while l <= r {
            let m = (r - l) / 2 + l

            if sortedRanges[m].0 <= left && sortedRanges[m].1 >= right {
                return true
            } else {
                if sortedRanges[m].0 > right {
                    r = m - 1
                } else if sortedRanges[m].1 < left {
                    l = m + 1
                } else {
                    return false
                }
            }
        }

        return false
    }
    
    func removeRange(_ left: Int, _ right: Int) {
        var idx = 0
    
        while idx < sortedRanges.count {
            let range = sortedRanges[idx]
            
            if isOverlap(range, (left, right)) {
                if range.0 >= left && range.1 <= right {
                    sortedRanges.remove(at: idx)
                } else if range.0 < left && range.1 > right {
                    sortedRanges.remove(at: idx)
                    sortedRanges.insert((right, range.1), at: idx)
                    sortedRanges.insert((range.0, left), at: idx)
                    idx += 2
                } else if range.1 <= right {
                    sortedRanges[idx].1 = left
                    idx += 1
                } else {
                    sortedRanges[idx].0 = right
                    idx += 1
                }
            } else {
                idx += 1
            }
        }
    }
    

    private func sortRanges(for newRange: (Int, Int)) {
        sortedRanges.append(newRange)
        
        sortedRanges.sort {
            $0.0 < $1.0
        }
        
        var res = [(Int, Int)]()
        
        for range in sortedRanges {
            guard let last = res.last else {
                res.append(range)
                continue
            }
            
            if range.0 > last.1 {
                res.append(range)
            } else {
                res.removeLast()
                res.append((last.0, max(last.1, range.1)))
            }
        }
        
        sortedRanges = res
    }

    private func isOverlap(_ l: (Int, Int), _ r: (Int, Int)) -> Bool {
        return !(l.0 >= r.1 || r.0 >= l.1)
    }
}
