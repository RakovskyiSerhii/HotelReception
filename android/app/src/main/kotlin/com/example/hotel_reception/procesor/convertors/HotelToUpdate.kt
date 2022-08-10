package com.example.hotel_reception.procesor.convertors

import com.example.hotel_reception.procesor.dto.update.HotelUpdate
import com.example.hotel_reception.procesor.dto.update.RoomBusinessType
import com.example.hotel_reception.procesor.dto.update.RoomBusinessTypeEnum
import com.example.hotel_reception.procesor.dto.update.RoomUpdate
import com.example.hotel_reception.procesor.model.*
import com.google.gson.Gson
import java.util.*
import java.util.concurrent.TimeUnit

fun Hotel.convertToUpdate(): String {
    val roomsUpdate = rooms.map {
        val businessType = defineBusinessType(it)
        return@map RoomUpdate(
            number = it.room.number,
            lifetime = it.lifetime,
            businessType = RoomBusinessType(
                type = businessType,
                daysOccupation = defineOcupationPeriod(it.roomBusiness, businessType, this.today)
            )
        )
    }
    val hotel = HotelUpdate(
        balance = this.balance,
        monthIncome = this.monthRevenue,
        date = today.time,
        rooms = roomsUpdate,
        dayIncome = dayRevenue,
        worldSpeed = currentSpeed,
    )
    return Gson().toJson(hotel)
}

private fun defineOcupationPeriod(
    roomBusiness: RoomBusiness,
    businessType: RoomBusinessTypeEnum,
    today: Date
): Int {
    return when (businessType) {
        RoomBusinessTypeEnum.occupiedByCustomer -> {
            val type = roomBusiness as CustomerRoom
            getDaysCountBetweenDates(today, type.endDate)
        }

        RoomBusinessTypeEnum.dirty -> 0
        RoomBusinessTypeEnum.cleaning -> 0
        RoomBusinessTypeEnum.repairing -> {
            val type = roomBusiness as RepairingRoom
            getDaysCountBetweenDates(today, type.endDate)
        }
        RoomBusinessTypeEnum.empty -> 0
    }
}

private fun getDaysCountBetweenDates(start: Date, end: Date): Int {
    val millionSeconds = start.time - end.time
    return TimeUnit.MILLISECONDS.toDays(millionSeconds).toInt()
}

private fun defineBusinessType(room: HotelRoom): RoomBusinessTypeEnum {
    return when {
        room.roomInService -> RoomBusinessTypeEnum.cleaning
        room.occupiedByCustomer -> RoomBusinessTypeEnum.occupiedByCustomer
        room.roomWaitingClearing -> RoomBusinessTypeEnum.dirty
        room.repairingRoom -> RoomBusinessTypeEnum.repairing
        else -> RoomBusinessTypeEnum.empty
    }
}