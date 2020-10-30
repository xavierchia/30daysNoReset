//
//  NoFapBrain.swift
//  100daysNoFap
//
//  Created by xavier chia on 30/10/20.
//

import UIKit

struct NoFapBrain {
    var days = 0
    
    mutating func getDayNumber() -> Int {
        let startingDays = UserDefaults.standard.integer(forKey: "startingDays")
        let startingDate = UserDefaults.standard.object(forKey: "startingDate") as! Date
        let today = Date()
        
        let calendar = Calendar.current

        let todayStart = calendar.startOfDay(for: today)
        let startingDateStart = calendar.startOfDay(for: startingDate)
        
        let daysPassed = calendar.dateComponents([.day], from: startingDateStart, to: todayStart).day!
                
        let dayCount = startingDays + daysPassed
        
        self.days = dayCount
        return dayCount
    }
    
    func decreaseViewDay(_ viewDay: Int) -> Int {
        if viewDay > 0 {
            let decreasedViewDay = viewDay - 1
            return decreasedViewDay
        }
        return viewDay
    }
    
    func increaseViewDay(_ viewDay: Int) -> Int {
        if viewDay < days {
            let increasedViewDay = viewDay + 1
            return increasedViewDay
        }
        return viewDay
    }
}
