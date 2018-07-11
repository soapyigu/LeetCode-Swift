/**
 * Question Link: https://leetcode.com/problems/text-justification/
 * Primary idea: Iterate the words, keep track of the index of first word and the length 
 *               of the line. Insert spaces with fix spaces and extra spaces. 
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TextJustification {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var res = [String]()
        var last = 0, currentLineLength = 0
        
        for (i, word) in words.enumerated() {
            if currentLineLength + word.count + (i - last) > maxWidth {
                
                res.append(buildLine(words, last, i - 1, maxWidth, currentLineLength))
                
                last = i
                currentLineLength = 0   
            }
            
            currentLineLength += word.count
        }
        
        res.append(buildLastLine(words, last, words.count - 1, maxWidth))
        
        return res
    }
    
    fileprivate func buildLine(_ words: [String], _ start: Int, _ end: Int, _ maxWidth: Int, _ currentLineLength: Int) -> String {
        var line = ""
        var extraSpaceNum = 0, spaceNum = 0
        
        if end > start {
            extraSpaceNum = (maxWidth - currentLineLength) % (end - start)
            spaceNum = (maxWidth - currentLineLength) / (end - start)
        } else {
            spaceNum = maxWidth - currentLineLength
        }
        
        for i in start...end {
            line.append(words[i])
            
            if start != end && i == end {
                break
            } 
            
            for _ in 0..<spaceNum {
                line.append(" ")
            }
            
            if extraSpaceNum > 0 {
                line.append(" ")
                extraSpaceNum -= 1
            }
        }
        
        return line
    }
    
    fileprivate func buildLastLine(_ words: [String], _ start: Int, _ end: Int, _ maxWidth: Int) -> String {
        var line = ""
        
        for i in start...end {
            line.append(words[i])
            
            if i < end {
                line.append(" ")
            }
        }
        
        while line.count < maxWidth {
            line.append(" ")
        }
        
        return line
    }
}
