//
//  WorldClock.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

protocol WorldsClock {
    func getDate() -> Date
    func getDayOfMonth() -> Int
    func getSeason() ->  Season
    func getCurrentSpeed() ->  WorldSpeed
    func nextSpeed()
    func getMultiply() -> Double
}
