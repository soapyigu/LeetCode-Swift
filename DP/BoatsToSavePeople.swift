class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var people = people.sorted()
        var result = people.count
        var l = 0, r = result-1
        
        while l < r {
            if people[l] + people[r] <= limit {
                l += 1
                result -= 1
            }
            r -= 1
        }
        
        return result
    }
}
