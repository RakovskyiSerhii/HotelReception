package com.example.hotel_reception.procesor.dto.setup

import com.example.hotel_reception.procesor.dto.ServiceDto

data class SetupDto(
    val roomsByType: List<RoomCount>,
    val service: ServiceDto,
    val dayTime: Int,
)



