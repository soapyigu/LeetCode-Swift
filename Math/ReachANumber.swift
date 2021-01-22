class Solution {
    func reachNumber(_ target: Int) -> Int {
        var target = abs(target)
        
        var step = 0
        while target > 0 {
            step += 1
            target -= step
        }
        target = -target
        
        return (target.isMultiple(of: 2) ? step : (step + 1 + step%2))
    }
}

/*
0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21
    1       2           3               4                   5                       6
    2           3               4                   5                       6
        3               4                   5                       6
3               4                   5                       6
        4                   5                       6
4                   5                       6
*/


