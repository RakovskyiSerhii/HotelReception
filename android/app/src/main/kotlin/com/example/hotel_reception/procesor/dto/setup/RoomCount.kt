package com.example.hotel_reception.procesor.dto.setup

import com.example.hotel_reception.procesor.dto.RoomTypeDto

data class RoomCount(
    val type: RoomTypeDto,
    val count: Int,
)
