//
//  RoomModel.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

enum RoomType : Hashable {
    case econom(Int, Int)
    case suite(Int, Int)
    case president(Int, Int)
}

struct BasicRoom {
    let roomType: RoomType, number: Int
}

struct HotelRoom : RoomBusinessPrtocol {
    var room: BasicRoom
    var lifeTime: Int = 100
    var roomBusiness: RoomBusiness = EmptyRoom()

    func isRoomReadyForCustomer() -> Bool  {return roomBusiness is EmptyRoom}
    func isRoomOccupiedByCustomer() -> Bool {return roomBusiness is CustomerRoom}
    func isRoomWaitingCleaing() -> Bool { return roomBusiness is DirtyRoom}
    func isRoomInService() -> Bool  {return roomBusiness is CleaningRoom}
    func isRoomRepairing() -> Bool  {return roomBusiness is RepairingRoom}
}

class RoomBusiness {}

class EmptyRoom: RoomBusiness {}
class DirtyRoom: RoomBusiness {}
class RoomInUse : RoomBusiness {
    let startDate: Date, endDate: Date
    
    init(startDate: Date, endDate: Date) {
        self.startDate = startDate
        self.endDate = endDate
    }
}
class CustomerRoom: RoomInUse {
    
}
class CleaningRoom: RoomInUse{}
class RepairingRoom: RoomInUse{}

protocol RoomBusinessPrtocol {
    func isRoomReadyForCustomer() -> Bool
    func isRoomOccupiedByCustomer() -> Bool
    func isRoomWaitingCleaing() -> Bool
    func isRoomInService() -> Bool
    func isRoomRepairing() -> Bool
}
