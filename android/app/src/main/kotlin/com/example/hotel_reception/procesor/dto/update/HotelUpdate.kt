package com.example.hotel_reception.procesor.dto.update

import com.example.hotel_reception.procesor.dto.WorldSpeed
import java.util.*

data class HotelUpdate(
    val balance: Int,
    val monthIncome: Int,
    val date: Long,
    val rooms: List<RoomUpdate>,
    val worldSpeed: WorldSpeed,
    val dayIncome: Int,
)