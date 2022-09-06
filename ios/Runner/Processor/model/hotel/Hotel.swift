//
//  Hotel.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 18.08.2022.
//

import Foundation

class Hotel : HotelService, AccountantService, HotelReception, RepairingSquad {
    
    
    private let service:Service
    private var rooms: Array<HotelRoom>
    private var balance: Int = 5000
    private let worldsClock: WorldsClock
    private var monthRevenue: Int = 0
    private var dayRevenue: Int = 0
    
    static func build(service: Service,
                      roomByType: Array<RoomByType>,
                      worldsClock: WorldsClock)->Hotel {
        var rooms: Array<BasicRoom> = []
        
        roomByType.forEach { room in
            for i in 0...room.count {
                rooms.append(BasicRoom(roomType: room.roomType, number: rooms.count+i))
            }
        }
        return Hotel(service: service, rooms: rooms.map {
            HotelRoom.init(room: $0)}, worldsClock: worldsClock)
    }
    
    init(service:Service, rooms: Array<HotelRoom>, worldsClock: WorldsClock) {
        self.rooms = rooms
        self.service = service
        self.worldsClock = worldsClock
    }
    
    func getToday() -> Date{
        return worldsClock.getDate();
    }
    
    func getWorldsClock() -> WorldsClock{
        return worldsClock
    }
    
    func getMonthRevenue() -> Int{
        return monthRevenue
    }
    
    func getDayRevenue() -> Int {
        return dayRevenue
    }
    func getBalance() -> Int {
        return balance
    }
    
    func getRooms() -> Array<HotelRoom> {
        return rooms
    }
    
    func getCurrentSpeed() -> WorldSpeed {
        return worldsClock.getCurrentSpeed();
    }
    
    // accauntant
    func calculateIncome(inCome: Int) {
        dayRevenue = inCome
        monthRevenue += inCome
        balance += inCome
        //log
    }
    
    func calculateOutCome() {
        var outCome = 0
        switch service {
        case .normal:
            outCome += normalCost
        case .medium:
            outCome += mediumCost
        case .expensive:
            outCome += expensiveConst
        }
        
        //        outcome += rooms.filter(isRoomOccupiedByCustomer).map { room in
        //            switch room.roomType {
        //            case .president(cost, _): cost
        //            case .econom(cost, _): cost
        //            case .suite(cost, _) : cost
        //            }
        //        }
        let roomsInUse = rooms.filter({ room in
            room.isRoomOccupiedByCustomer()
        }).count
        
        outCome += roomsInUse * 20 + rooms.count - roomsInUse
        balance -= outCome
    }
    
    func payTaxes() {
        let tax = Double(monthRevenue) * 0.1
        balance -= Int(tax)
        monthRevenue = 0
        //log
    }
    
    func cleanRooms() {
        let roomsWaitingClean = rooms.filter { $0.isRoomWaitingCleaing() }
        let capability: Int
        switch service {
        case .normal:
            capability = normalCapability
        case .medium: capability = mediumCapability
        case .expensive: capability = expensiveCapability
        }
        
        let indexes = roomsWaitingClean.prefix(capability).map { room in
            room.room.number
        }
        for i in indexes {
            rooms[i].roomBusiness = EmptyRoom()
        }
        
    }
    
    func checkoutCustomers() {
        var checkedOutCustomers = 0
        rooms.forEach { room in
            if room.isRoomOccupiedByCustomer() {
                if (room.roomBusiness as! RoomInUse).endDate == worldsClock.getDate() {
                    checkedOutCustomers+=1
                    rooms[room.room.number].roomBusiness = DirtyRoom()
                }
            }
        }
        //log count
    }
    
    func checkInPersons(persons: Array<Person>) {
        let roomsByType = Dictionary(grouping: rooms.filter{
            $0.isRoomReadyForCustomer()
        }) { room in
            room.room.roomType
        }.sorted { first, second in
            let types = [RoomType.econom(40, 1500),RoomType.suite(95, 2500), RoomType.president(150, 3500), ]
            let indexFisrst = types.firstIndex(of: first.key)!
            let indexSecond = types.firstIndex(of: second.key)!
            return indexFisrst > indexSecond
        }
        
        
        var income = 0
        roomsByType.forEach { roomByType in
            let personPreferences = persons.filter { person in
                person.roomPreferences.contains(roomByType.key)
            }
            let freeRoomsByType = roomByType.value
            if !freeRoomsByType.isEmpty && !personPreferences.isEmpty {
                let personToCheckin = personPreferences.prefix(freeRoomsByType.count)
                for i in 0...personToCheckin.count {
                    let roomCost = getRoomCost(type: freeRoomsByType[i].room.roomType)
                    
                    income += Int(Double(roomCost)*worldsClock.getMultiply()) * personToCheckin[i].daysAmount
                    var room = rooms[freeRoomsByType[i].room.number]
                    room.roomBusiness = CustomerRoom(startDate: personToCheckin[i].startDate, endDate: personToCheckin[i].endDate)
                    let event = BreakeEvent.generateEvent(person: personToCheckin[i])
                    if event != nil {
                        if event!.completelyBreak {
                            room.lifeTime = 0
                        }else {
                            balance -= event!.costToRepair
                            room.lifeTime -= event!.daysDecrement
                        }
                    }
                }
            }
        }
        calculateIncome(inCome: income)
    }
    
    private func getRoomCost(type: RoomType) -> Int {
        switch type {
        case let .econom(cost, _) : return cost
        case let .suite(cost, _): return cost
        case let .president(cost, _): return cost
        }
    }
    
    func checkDesk() {
        decreaseRoomLifeTime()
        cleanRooms()
        calculateOutCome()
        checkoutCustomers()
        renewRoomsAfterRepairing()
        checkRoomsNeedRepairing()
    }
    
    func checkRoomsNeedRepairing() {
        let needRepair = rooms.filter {
            $0.lifeTime < 1 && !$0.isRoomOccupiedByCustomer()
        }
        needRepair.forEach(repairRoom)
    }
    
    func renewRoomsAfterRepairing() {
        let renewedRooms =
        rooms.filter { $0.isRoomRepairing() && ($0.roomBusiness as! RoomInUse).endDate == worldsClock.getDate() }
        
        renewedRooms.forEach {
            rooms[$0.room.number].roomBusiness = EmptyRoom()
            rooms[$0.room.number].lifeTime = 100
        }
    }
    
    func decreaseRoomLifeTime() {
        rooms.filter {
            $0.isRoomOccupiedByCustomer()
        }.forEach {
            rooms[$0.room.number].lifeTime -= 1
        }
    }
    
    func repairRoom(room: HotelRoom) {
        balance -= getRoomCost(type: room.room.roomType)
        var dayComponent = DateComponents()
        dayComponent.day = 1
        let date = Calendar.current.date(byAdding: dayComponent , to: getToday())!
        rooms[room.room.number].roomBusiness = RepairingRoom(startDate: worldsClock.getDate(), endDate: date)
    }
}
