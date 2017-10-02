/**
 * Question Link: https://leetcode.com/problems/expression-add-operators/
 * Primary idea: Classic Depth-first Search, terminates at when position encounters the 
 *               length of the string num, add to result when eval is equal to target
 * 
 * Note: 
 * 1. String cast to Integer will make character loss, e.g. "05" -> 5
 * 2. Multiplication's priority is higher than addiction
 *
 * Time Complexity: O(n!), Space Complexity: O(n)
 *
 */

class ExpressionAddOperators {
    func addOperators(_ num: String, _ target: Int) -> [String] {
        var res = [String]()

        guard num.count > 0 else {
            return res
        }

        dfs(&res, "", num, target, 0, 0, 0)

        return res
    }

    private func dfs(_ res: inout [String], _ temp: String, _ num: String, _ target: Int, _ pos: Int, _ eval: Int, _ mul: Int) {
        if pos == num.count {
            if eval == target {
                res.append(temp)
            }
            return
        }

        for i in pos..<num.count {
            if i != pos && num[i] == "0" {
                break
            }
            let curt = Int(num[pos..<i + 1])!
            if pos == 0 {
                dfs(&res, temp + String(curt), num, target, i + 1, curt, curt)
            } else {
                dfs(&res, temp + "+" + String(curt), num, target, i + 1, eval + curt, curt)
                dfs(&res, temp + "-" + String(curt), num, target, i + 1, eval - curt, -curt)
                dfs(&res, temp + "*" + String(curt), num, target, i + 1, eval - mul + mul * curt, mul * curt)
            }
        }
    }
}

extension String {
  subscript(index: Int) -> String {
    get {
      assert(index < self.count)
      return String(Array(self.characters)[index])
    }
  }
  
  subscript(range: CountableRange<Int>) -> String {
    get {
      var result = ""
      for i in range {
        assert(i < self.count)
        result.append(self[i])
      }
      return result
    }
  }
}