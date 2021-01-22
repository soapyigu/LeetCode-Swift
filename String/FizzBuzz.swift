class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        for x in 1...n {
            let m3 = x.isMultiple(of: 3)
            let m5 = x.isMultiple(of: 5)
            
            switch (m3, m5) {
                case (true, true):
                result.append("FizzBuzz")
                case (true, false):
                result.append("Fizz")
                case (false, true):
                result.append("Buzz")
                default:
                result.append("\(x)")
            }
        }
        
        return result
    }
}