//
//  PersonRandomizer.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 18.08.2022.
//

import Foundation

class PersonRandomizer {
    private func randomChanceToBreak() -> Double {
        return Double.random(in: 0.0...3.3)
    }
    
    private func randomChanceToCompletelyBreak() -> Double {
        return Double.random(in: 0.0...1.0)
    }
    private func randomDaysAmount() -> Int {
        return Int.random(in: 1...5)
    }
    private func randomPersonAmount() -> Int{
        return Int.random(in: 0...10)
    }
    
    func generatePersonQuery(date: Date) -> Array<Person> {
        let personCount = randomPersonAmount()
        var persons:Array<Person> = []
        for _ in 0...personCount {
            let days = randomDaysAmount()
            var dayComponent = DateComponents()
            dayComponent.day = 1
            persons.append(Person(
                daysAmount: days, startDate: date, endDate: Calendar.current.date(byAdding: dayComponent, to: date)!, chanceToReduceRoomLifeTime: Int(randomChanceToBreak()), chanceToBreakRoom: Int(randomChanceToCompletelyBreak()), roomPreferences: generatePersonPreferences()
            ))
        }
        return persons
    }
    
    private func generatePersonPreferences() ->  Array<RoomType> {
        let chance = Int.random(in: 0...100)
        switch chance {
        case  71...85: return [RoomType.econom(40, 1500), RoomType.suite(95, 2500)]
        case  76...100: return [RoomType.econom(40, 1500), RoomType.suite(95, 2500), RoomType.president(150, 3500)]
        default: return [RoomType.econom(40, 1500)]
            
        }
    }
}
