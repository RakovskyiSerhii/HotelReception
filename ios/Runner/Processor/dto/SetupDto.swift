//
//  File.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

struct SetupDto: Decodable {
    let roomsByType: Array<RoomCount>
    let service: String
}
