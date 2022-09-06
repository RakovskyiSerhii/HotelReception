//
//  RoomBusinessType.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 25.08.2022.
//

import Foundation

struct RoomBusinessType: Codable {
    let daysOccupation: Int
    let type: String
}
enum  RoomBusinessTypeEnum  : Codable {
    case occupiedByCustomer
    case dirty
    case cleaning
    case repairing
    case empty
    
    var description : String {
        switch self {
        case .occupiedByCustomer:
            return "occupiedByCustomer"
        case .dirty:
            return "dirty"
        case .cleaning:
            return "cleaning"
        case .repairing:
            return "repairing"
        case .empty:
            return "empty"
        }
      }
}
