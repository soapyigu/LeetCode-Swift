/**
 * Question Link: https://leetcode.com/problems/amount-of-new-area-painted-each-day/
 * Primary idea: Sweep Line. Mark each position with the end of the painted area, and efficiently skip sections aleayd painted.
 *
 * Time Complexity: O(logn), Space Complexity: O(1)
 */

class AmountNewAreaPaintedEachDay {
    func amountPainted(_ paint: [[Int]]) -> [Int] {
        var line = Array(repeating: 0, count: 50000), result = [Int]()
        
        for p in paint {
            let start = p[0], end = p[1]
            var paintArea = 0, i = start
            
            while i < end {
                let next = max(line[i], i + 1)
                paintArea += line[i] == 0 ? 1 : 0
                line[i] = max(line[i], end)
                i = next
            }
            
            result.append(paintArea)
        }
        
        return result
    }
}
