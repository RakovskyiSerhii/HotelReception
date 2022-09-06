//
//  HotelConverter.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 25.08.2022.
//

import Foundation

extension Date {
    var millisecondsSince1970: Int64 {
        Int64((self.timeIntervalSince1970 * 1000.0).rounded())
    }
}

class HotelConverter {
    static func convertToUpdate(hotel: Hotel) -> String {
        print("try parse update")
        print("converting rooms")
        let roomsUpdate: Array<RoomUpdate> = hotel.getRooms().map { room in
            let  businessType = defineBusinessType(room: room)
            return RoomUpdate.init(number: room.room.number, lifetime: room.lifeTime, businessType: RoomBusinessType.init(daysOccupation: defineOcupationPeriod(roomBusiness: room.roomBusiness, businessType: businessType, today: hotel.getToday()), type: businessType.description))
        }
        print("converting rooms")
        
        let hotelUpdate = HotelUpdate(
            balance: hotel.getBalance(),
            monthIncome: hotel.getMonthRevenue(),
            date: Int(hotel.getToday().millisecondsSince1970),
            rooms: roomsUpdate,
            worldSpeed: hotel.getCurrentSpeed().description,
            dayIncome: hotel.getDayRevenue()
        )
        let jsonEncoder = JSONEncoder()
        let jsonData = try! jsonEncoder.encode(hotelUpdate)
        guard let json = String(data: jsonData, encoding: String.Encoding.utf8) else { return "" }
        
        return json
    }
    
    private static func defineOcupationPeriod(roomBusiness: RoomBusiness,
                                              businessType: RoomBusinessTypeEnum,
                                              today: Date) -> Int {
        switch businessType {
        case .occupiedByCustomer:
            let type = roomBusiness as! CustomerRoom
            return getDaysCountBetweenDates(start: today, end: type.endDate)
        case .dirty:
            return 0
        case .cleaning:
            return 0
        case .repairing:
            let type = roomBusiness as! RepairingRoom
            return getDaysCountBetweenDates(start: today, end: type.endDate)
        case .empty:
            return 0
        }
    }
    
    private static func getDaysCountBetweenDates(start:Date, end: Date) -> Int {
        let calendar = Calendar.current
        
        let start = calendar.startOfDay(for: start)
        let end = calendar.startOfDay(for: end)
        
        let components = calendar.dateComponents([.day], from: start, to: end)
        return components.day ?? 0
    }
    
    private static func defineBusinessType(room: HotelRoom) -> RoomBusinessTypeEnum {
        if room.isRoomInService() {
            return RoomBusinessTypeEnum.cleaning
        } else if room.isRoomOccupiedByCustomer() {
            return RoomBusinessTypeEnum.occupiedByCustomer
        } else if room.isRoomWaitingCleaing() {
            return RoomBusinessTypeEnum.dirty
        } else if room.isRoomRepairing() {
            return RoomBusinessTypeEnum.repairing
        } else {
            return RoomBusinessTypeEnum.empty
        }
    }
}


