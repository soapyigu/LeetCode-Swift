/**
 * Question Link: https://leetcode.com/problems/text-justification/
 * Primary idea: Iterate the words, keep track of the index of first word and the length 
 *               of the line. Insert spaces with fix spaces and extra spaces. 
 * Time Complexity: O(n), Space Complexity: O(n)
 */

class TextJustification {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var res = [String](), rowStart = 0, currentLen = 0

        for (i, word) in words.enumerated() {

            if currentLen + word.count + (i - rowStart) > maxWidth {
                res.append(buildRow(rowStart, i - 1, words, maxWidth, currentLen))

                rowStart = i
                currentLen = 0
            }

            currentLen += word.count
        }

        res.append(buildLastRow(rowStart, words, maxWidth))

        return res
    }

    private func buildRow(_ start: Int, _ end: Int, _ words: [String], _ maxWidth: Int, _ currentLen: Int) -> String {
        var res = "", spaceNum = 0, extraSpaceNum = 0

        if end > start {
            spaceNum = (maxWidth - currentLen) / (end - start)
            extraSpaceNum = (maxWidth - currentLen) % (end - start)
        } else {
            spaceNum = maxWidth - currentLen
        }

        for i in start...end {
            res += words[i]

            if start != end && i == end {
                break
            }

            res.append(String(repeating: " ", count: spaceNum))
            if extraSpaceNum > 0 {
                res.append(" ")
                extraSpaceNum -= 1
            }
        }

        return res
    }

    private func buildLastRow(_ start: Int, _ words: [String], _ maxWidth: Int) -> String {
        var res = ""

        for i in start..<words.count {
            res += words[i]

            if i + 1 < words.count {
                res.append(" ")
            }
        }

        if res.count < maxWidth {
            res.append(String(repeating: " ", count: maxWidth - res.count))
        }

        return res
    }
}
