/**
 * Question Link: https://leetcode.com/problems/exam-room/
 * Primary idea: Calculate and compare middle point between two taken seats.
 *
 * Time Complexity: O(n) for seat(), O(1) for leave(at:), Space Complexity: O(n)
 *
 */

 class ExamRoom {
  	var seats: [Int]
  
  	init(_ n: Int) {
    	seats = Array(repeating: 0, count: n)
  	}
  
  	func seat() -> Int {
    	var maxDistance = 0, maxIndex = 0, lastOne = -1
    
    	for (i, seat) in seats.enumerated() {
	      	if seat == 1 {
	        	if lastOne == -1 {
	          		if maxDistance < i {
	            		maxDistance = i
	            		maxIndex = 0
	            	}
	          	} else {
	          		if maxDistance < (i - lastOne) / 2 {
	            		maxDistance = (i - lastOne) / 2
	            		maxIndex = lastOne + (i - lastOne) / 2
	          		}
	          	}
        	}
        
        	lastOne = i
      	}
    
	    if lastOne != -1 {
	      	if maxDistance < (seats.count - 1 - lastOne) / 2 {
	        	maxIndex = seats.count - 1
	      	}
	    }
    
    	seats[maxIndex] = 1
    
    	return maxIndex
  	}
  
  	func leave(_ seat: Int) {
    	seats[seat] = 0
  	}
}