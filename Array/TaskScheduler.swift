//
//  621. Task Scheduler.swift
//  Shuati
//
//  Created by Yankun Jin on 2017/6/30.
//  Copyright © 2017年 Yankun Jin. All rights reserved.
//

import Foundation

class taskScheduler {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var map = [Int](repeating: 0, count:26)
        for i in 0..<tasks.count {
            let index = String(tasks[i]).unicodeScalars.map { $0.value }.reduce(0, +) - "A".unicodeScalars.map { $0.value }.reduce(0, +)
            
            map[Int(index)] += 1
        }
        map.sort()
        let max_num = map[25] - 1
        var totalSlot = max_num * n
        for i in 0...24 {
            if map[24 - i] > 0 {
                totalSlot -= min(map[24 - i], max_num)
            }
        }
        return totalSlot > 0 ? tasks.count + totalSlot : tasks.count
    }
}
