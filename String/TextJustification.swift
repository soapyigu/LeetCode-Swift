/**
 * Question Link: https://leetcode.com/problems/text-justification/
 * Primary idea: Iterate the words, keep track of the index of first word and the length 
 *               of the line. Insert spaces with fix spaces and extra spaces. 
 * Time Complexity: O(n^2), Space Complexity: O(n)
 */

class TextJustification {
    func fullJustify(words: [String], _ maxWidth: Int) -> [String] {
        var res = [String]()
        var count = 0, last = 0
        
        guard words.count > 0 && maxWidth >= 0 else {
            return res
        }
        
        for i in 0 ..< words.count {
            let wordLen = words[i].characters.count
        
            if count + (i - last) + wordLen > maxWidth {
                var spaceNum = 0
                var extraNum = 0
                
                if i - last - 1 > 0 {
                    spaceNum = (maxWidth - count) / (i - last - 1)
                    extraNum = (maxWidth - count) % (i - last - 1)
                    res.append(_buildLine(words, last, i - 1, spaceNum, extraNum))
                } else {
                    res.append(_buildSpecialLine(words, last, last, maxWidth))
                }
                count = 0
                last = i
            }
            
            count += wordLen
        } 
        
        res.append(_buildSpecialLine(words, last, words.count - 1, maxWidth))
        
        return res
    }
    
    private func _buildLine(words: [String], _ start: Int, _ end: Int, _ spaceNum: Int, _ extraNum: Int) -> String {
        var res = ""
        var extraNum = extraNum
        
        for i in start ... end {
            res += words[i]
            if i != end {
                for _ in 1 ... spaceNum {
                    res += " "
                }
                if extraNum != 0 {
                    res += " "
                    extraNum -= 1
                }
            }
        }
        
        return res
    }
    
    private func _buildSpecialLine(words: [String], _ start: Int, _ end: Int, _ lineLength: Int) -> String {
        var res = ""
        
        for i in start ... end {
            res += words[i]
            if i < end {
                res += " "
            }
        }
        
        for _ in res.characters.count ..< lineLength {
            res += " "
        }
        
        return res
    }
}