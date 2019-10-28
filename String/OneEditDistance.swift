/**
 * Question Link: https://leetcode.com/problems/one-edit-distance/
 * Primary idea: Two pointers to determine two strings' mutation
 * Time Complexity: O(n), Space Complexity: O(n)
 */

enum Edit {
    case insert
    case delete
    case replace
}

class OneEditDistance {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        guard s != t else { 
            return false 
        }
        var editType = Edit.insert
        
        if s.count == t.count { 
            editType = .replace
        } else if s.count - t.count == 1 {
            editType = .delete
        } else if t.count - s.count == 1 {
            editType = .insert
        } else {
            return false 
        }
        
        let arr = Array(s), brr = Array(t)
        var flag = false, aIdx = 0, bIdx = 0
        
        while aIdx < arr.count && bIdx < brr.count {
            
            if arr[aIdx] != brr[bIdx] {
                
                guard !flag else { 
                    return false 
                }
                
                flag = true
                
                switch editType {
                case .insert: 
                    bIdx += 1
                case .delete: 
                    aIdx += 1
                case .replace: 
                    aIdx += 1
                    bIdx += 1
                }
            } else {
                aIdx += 1
                bIdx += 1
            }
            
        }
        return true 
    }
}
