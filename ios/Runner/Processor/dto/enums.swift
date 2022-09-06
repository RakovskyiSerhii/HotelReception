//
//  enums.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

enum ServiceDto: Decodable {
    case normal
    case medium
    case expensive
}

enum RoomTypeDto: Decodable {
    case econom, suite, president
}
