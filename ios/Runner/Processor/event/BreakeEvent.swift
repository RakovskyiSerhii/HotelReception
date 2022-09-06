//
//  BreakeEvent.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 18.08.2022.
//

import Foundation

class BreakeEvent {
    let completelyBreak: Bool
    let costToRepair: Int
    let daysDecrement: Int
    
    init(completelyBreak: Bool) {
        self.completelyBreak = completelyBreak
        self.costToRepair = 0
        self.daysDecrement = 0
    }
    
    init(costToRepair: Int, daysDecrement: Int) {
        self.costToRepair = costToRepair
        self.daysDecrement = daysDecrement
        self.completelyBreak = false
    }
    
    static func generateEvent(person: Person) -> BreakeEvent? {
        let chance = Int.random(in: 0...100)
        if  (96...100).contains(chance) {
            if chance >= 99 {
                return BreakeEvent.init(completelyBreak: true)
            } else {
                return BreakeEvent.init(costToRepair: Int.random(in: 200...600), daysDecrement: Int.random(in: 1...10))
            }
        } else {
            return nil
        }
    }
}
