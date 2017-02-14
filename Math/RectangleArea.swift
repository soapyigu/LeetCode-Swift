/**
 * Question Link: https://leetcode.com/problems/rectangle-area/
 * Primary idea: Add areas of two and minus the overlap one
 * Time Complexity: O(1), Space Complexity: O(1)
 *
 */

 class RectangleArea {
    func computeArea(_ A: Int, _ B: Int, _ C: Int, _ D: Int, _ E: Int, _ F: Int, _ G: Int, _ H: Int) -> Int {
        let areaOne = (C - A) * (D - B)
        let areaTwo = (G - E) * (H - F)
        
        return areaOne + areaTwo - _overlap(A, C, E, G) * _overlap(B, D, F, H)
    }
    
    private func _overlap(_ A: Int, _ B: Int, _ C: Int, _ D: Int) -> Int {
        if B <= C || A >= D {
            return 0
        }
        
        return min(B, D) - max(A, C)
    }
}