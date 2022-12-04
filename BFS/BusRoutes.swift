/**
 * Question Link: https://leetcode.com/problems/bus-routes/
 * Primary idea: BFS. Build a map for stop and related buses' indexes map. Use a queue to track until the current stop is equal to the target.
 * 
 * Time Complexity: O(nm), Space Complexity: O(nm)
 *
 */

class BusRoutes {
    func numBusesToDestination(_ routes: [[Int]], _ source: Int, _ target: Int) -> Int {

        if source == target {
            return 0
        }

        let stopBusesMap = buildMap(routes)

        // bfs
        var queue = [source], res = 0, isVisited = Set<Int>()

        while !queue.isEmpty {
            let size = queue.count

            for _ in 0..<size {
                let stop = queue.removeFirst()

                if stop == target {
                    return res
                }

                for busIdx in stopBusesMap[stop] ?? []  {
                    guard !isVisited.contains(busIdx) else {
                        continue
                    }
                    
                    isVisited.insert(busIdx)
                    queue.append(contentsOf: routes[busIdx])
                }
            }
            
            res += 1
        }

        return -1
    }

    private func buildMap(_ routes: [[Int]]) -> [Int: Set<Int>] {
        var stopBusesMap = [Int: Set<Int>]()
        
        for (i, bus) in routes.enumerated() {
            bus.forEach {
                stopBusesMap[$0, default: Set<Int>()].insert(i)
            }
        }
        
        return stopBusesMap
    }
}
