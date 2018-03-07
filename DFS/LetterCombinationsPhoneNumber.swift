/**
 * Question Link: https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 * Primary idea: Classic Depth-first Search, create phone board at first
 * 
 * Time Complexity: O(nm), m stands for the average size of a string represented by a number 
 * Space Complexity: O(n)
 *
 */

class LetterCombinationsPhoneNumber {
    func letterCombinations(_ digits: String) -> [String] {
        var combinations = [String](), combination = ""
        
        dfs(createBoard(), &combinations, &combination, Array(digits), 0)
        
        return combinations
    }
    
    fileprivate func createBoard() -> [String] {
        var res = [String]()
  
        res.append("")
        res.append("")
        res.append("abc")
        res.append("def")
        res.append("ghi")
        res.append("jkl")
        res.append("mno")
        res.append("pqrs")
        res.append("tuv")
        res.append("wxyz")
  
        return res
    }
    
    fileprivate func dfs(_ board: [String], _ combinations: inout [String], _ combination: inout String, _ digits: [Character], _ index: Int) {
        if digits.count == index {
            if combination != "" {
                combinations.append(String(combination))
            }
            
            return
        }
        
        let digitStr = board[Int(String(digits[index]))!]
        
        for digitChar in digitStr {
            combination.append(digitChar)
            dfs(board, &combinations, &combination, digits, index + 1)
            combination.removeLast()
        }
    }
}