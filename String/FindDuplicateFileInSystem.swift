/**
 * Question Link: https://leetcode.com/problems/find-duplicate-file-in-system/
 * Primary idea: Iterate the paths array and categories paths with the same content
 *
 * Time Complexity: O(nm), n stands for number of paths, m stands for file number in a path
 *                  Space Complexity: O(n)
 */

class FindDuplicateFileInSystem {
    func findDuplicate(_ paths: [String]) -> [[String]] {
        var contentToFiles = [String: [String]]()
    
        for path in paths {
            let params = path.split(separator: " ")
        
            guard let dir = params.first else {
                continue
            }
        
            for i in 1..<params.count {
                let fileParams = params[i].split(separator: "(")
            
                guard let fileName = fileParams.first, let fileContentWithExtraInfo = fileParams.last else {
                    continue
                }
            
                let fileContent = String(describing: fileContentWithExtraInfo.dropLast())
                let filePath = String(describing: dir) + "/" + String(describing: fileName)
            
                contentToFiles[fileContent] = contentToFiles[fileContent, default: []] + [filePath]
            }
        }
    
        return contentToFiles.values.filter { $0.count >= 2 }
    }
}
