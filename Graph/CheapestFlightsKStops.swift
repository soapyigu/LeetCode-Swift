/**
 * Question Link: https://leetcode.com/problems/cheapest-flights-within-k-stops/
 * Primary idea: Topological sort + BFS. 
 * Build a graph with each srouce and destination as an edge. Put the source as the head node for the queue, visit every possible destinaiton and update the result with the possible smallest value.
 *
 * Time Complexity: O(n * (n - 1) + K), Space Complexity: O(n * (n - 1)), 
 * n represents number of the cities
 */

class CheapestFlightsKStops {
    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
        var srcDestinations = buildGraph(flights)
        var queue = [(src, 0)], dstPrice = [Int: Int](), stopCount = 0
        
        while !queue.isEmpty && stopCount < k + 1 {
            
            let currentQueueLen = queue.count
            
            for _ in 0..<currentQueueLen {
                let (from, fromPrice) = queue.removeFirst()
                
                guard let destinations = srcDestinations[from] else {
                    continue
                }
            
                for (to, price) in destinations {
                    if let prevPrice = dstPrice[to], prevPrice <= fromPrice + price {
                        continue
                    } else {
                        dstPrice[to] = fromPrice + price
                        queue.append((to, fromPrice + price))
                    }
                }
            
            }
            stopCount += 1
        }
        
        return dstPrice[dst] ?? -1
    }
    
    // src -> (dst, price)
    private func buildGraph(_ flights: [[Int]]) -> [Int: [(Int, Int)]] {
        var srcDestinations = [Int: [(Int, Int)]]()
        
        for flight in flights {
            srcDestinations[flight[0], default:[(Int, Int)]()].append((flight[1], flight[2]))
        }
                       
        return srcDestinations
    }
}