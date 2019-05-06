class MinStack {
    
    var stack: [Int]
    var min = Int.max
    var secondMin: Int?
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
    }
    
    func push(_ x: Int) {
        // only push the old minimum value when the current
        // minimum value changes after pushing the new value x
        if min >= x {
            stack.append(min)
            min = x
        }
        stack.append(x)
    }
    
    func pop() {
        // if pop operation could result in the changing of the current minimum value,
        // pop twice and change the current minimum value to the last minimum value.
        if min == stack.popLast() {
            min = stack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return min
    }
}