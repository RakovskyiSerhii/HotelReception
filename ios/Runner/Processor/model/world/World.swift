//
//  World.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

class World : WorldsClock {
    private var date = Date()
    private var listeners: Array<WorldChangedListener> = []
    private var speed = WorldSpeed.normal
    private var timer: Timer?
    
    private func nextDay() {
        var dayComponent = DateComponents()
        dayComponent.day = 1
        date = Calendar.current.date(byAdding: dayComponent , to: date)!
        notifyListeners()
    }
    
    private func notifyListeners() {
        print("date changed")
        listeners.forEach {
            $0.onDateChanged()
        }
    }
    
    
    func getDate() -> Date {
        return date;
    }
    
    func getDayOfMonth() -> Int {
        return Calendar.current.dateComponents([.day], from: date).day!
    }
    
    func getCurrentSpeed() -> WorldSpeed {
        return speed;
    }
    
    func getSeason() -> Season {
        let month = Calendar.current.dateComponents([.month], from: date).month!
        switch month {
        case  0...3 : return Season.winter(1.5)
        case  4...6 : return Season.spring(1)
        case  6...9 : return Season.summer(1.5)
        case  9...11 : return Season.autmn(1)
        default:
            return Season.winter(1.5)
        }
    }
    
    func getMultiply() -> Double {
        switch getSeason() {
        case let .autmn(multiply): return multiply
        case let .winter(multiply): return multiply
        case let .summer(multiply): return multiply
        case let .spring(multiply): return multiply
        }
    }
    func startWorld() {
        if #available(iOS 10.0, *) {
            print("startWorld")
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { t in
                self.nextDay()
            }
        } else {
            // Fallback on earlier versions
            
        }
    }
    
    func nextSpeed() {
        let values = [WorldSpeed.normal, WorldSpeed.fast, WorldSpeed.faster];
        let index = values.firstIndex(of: speed)!
        if values.endIndex == index
        {speed = values.first!}
        else
        {speed = values[index+1]}
        timer?.invalidate()
        startWorld()
    }
    
    func subscribeOnDateChanges(listener: WorldChangedListener) {
        listeners.append(listener)
    }
}
