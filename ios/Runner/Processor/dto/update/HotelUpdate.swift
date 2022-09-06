//
//  HotelUpdate.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 25.08.2022.
//

import Foundation

struct HotelUpdate :Codable{
   let balance: Int
   let monthIncome: Int
   let date: Int
   let rooms: Array<RoomUpdate>
   let worldSpeed: String
   let dayIncome: Int
}
