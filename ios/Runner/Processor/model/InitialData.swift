//
//  InitialData.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

struct InitialData {
    let roomByType: Array<RoomByType>
    let service: Service
}

struct RoomByType {
    let count:Int
    let roomType:RoomType
}
