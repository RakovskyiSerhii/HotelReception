package com.example.hotel_reception.procesor.model

import java.util.*

enum class RoomType(val cost: Int, val repairCost:Int) {
    econom(40, 1500),
    suite(95, 2500),
    president(150, 3500),
}

data class BasicRoom(
    val roomType: RoomType,
    val number: Int,
)

data class HotelRoom(
    val room: BasicRoom,
    var lifetime: Int = 100,
    var roomBusiness: RoomBusiness = EmptyRoom(),
) {
    val readyForCustomer: Boolean
        get() = roomBusiness is EmptyRoom

    val occupiedByCustomer: Boolean
        get() = roomBusiness is CustomerRoom

    val roomWaitingClearing: Boolean
        get() = roomBusiness is DirtyRoom

    val roomInService: Boolean
        get() = roomBusiness is CleaningRoom

    val repairingRoom: Boolean
        get() = roomBusiness is RepairingRoom
}


abstract class RoomBusiness
class EmptyRoom : RoomBusiness()
class DirtyRoom : RoomBusiness()
abstract class RoomInUse(val startDate: Date, val endDate: Date) : RoomBusiness()
class CustomerRoom(startDate: Date, endDate: Date) : RoomInUse(startDate, endDate)
class CleaningRoom(startDate: Date, endDate: Date) : RoomInUse(startDate, endDate)
class RepairingRoom(startDate: Date, endDate: Date) : RoomInUse(startDate, endDate)
