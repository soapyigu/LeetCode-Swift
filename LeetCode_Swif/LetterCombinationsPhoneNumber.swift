/**
 * Question Link: https://leetcode.com/problems/letter-combinations-of-a-phone-number/
 * Primary idea: Classic Depth-first Search, create phone board at first
 * 
 * Time Complexity: O(nm), m stands for the average size of a string represented by a number 
 * Space Complexity: O(n)
 *
 */

class LetterCombinationsPhoneNumber {
    func letterCombinations(digits: String) -> [String] {
        var res = [String]()
        let chars = [Character](digits.characters)
        
        guard chars.count > 0 else {
            return res
        }
        
        let board = _init()
        
        _dfs(&res, board, chars, "", 0)
        
        return res
    }
    
    private func _init() -> [String] {
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
    
    private func _dfs(inout res: [String], _ board: [String], _ chars: [Character], _ temp: String, _ index: Int) {
        // termination case
        if index == chars.count {
            res.append(temp)
            return
        }
        
        var temp = temp
        let current = [Character](board[Int(String(chars[index]))!].characters)
        
        for i in 0 ..< current.count {
            temp += String(current[i])
            _dfs(&res, board, chars, temp, index + 1)
            temp = String(temp.characters.dropLast())
        }
    }
}