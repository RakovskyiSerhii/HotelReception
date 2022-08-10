package com.example.hotel_reception.procesor.model

import java.util.*

data class Person(
    val daysAmount: Int,
    val startDate: Date,
    val endDate: Date,
    val chanceToReduceRoomLifeTime: Int,
    val chanceToBreakRoom: Int,
    val roomPreferences: List<RoomType>
)
/// [room number, daysStay, startDay, endDay, chanceToReduceRoomLifeTime, chanceToBreakRoom]
