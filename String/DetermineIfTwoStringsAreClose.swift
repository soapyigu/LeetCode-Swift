class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var dic1 = Dictionary(grouping: Array(word1)) { $0 }
        var dic2 = Dictionary(grouping: Array(word2)) { $0 }
        
        return dic1.map { $0.0 }.sorted() == dic2.map { $0.0 }.sorted()
            && dic1.map { $1.count }.sorted() == dic2.map { $1.count }.sorted()
    }
}