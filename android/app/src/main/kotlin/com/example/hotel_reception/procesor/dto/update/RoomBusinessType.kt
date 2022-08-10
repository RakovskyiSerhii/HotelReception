package com.example.hotel_reception.procesor.dto.update

data class RoomBusinessType(val daysOccupation: Int, val type: RoomBusinessTypeEnum)

enum class RoomBusinessTypeEnum {
    occupiedByCustomer,
    dirty,
    cleaning,
    repairing,
    empty,
}