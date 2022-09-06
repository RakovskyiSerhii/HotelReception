//
//  RoomUpdate.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 25.08.2022.
//

import Foundation

struct RoomUpdate : Codable {
    let number: Int
    let lifetime: Int
    let businessType: RoomBusinessType
}
