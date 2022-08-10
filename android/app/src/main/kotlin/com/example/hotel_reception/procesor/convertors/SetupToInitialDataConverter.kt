package com.example.hotel_reception.procesor.convertors

import com.example.hotel_reception.procesor.dto.RoomTypeDto
import com.example.hotel_reception.procesor.dto.ServiceDto
import com.example.hotel_reception.procesor.dto.setup.SetupDto
import com.example.hotel_reception.procesor.model.*

fun convertSetup(setup: SetupDto): InitialData {
    val service = when(setup.service) {
        ServiceDto.normal -> Service.normal
        ServiceDto.medium -> Service.medium
        ServiceDto.expensive -> Service.expensive
    }
    val rooms = setup.roomsByType.map {
        return@map RoomByType(it.count, roomType = when(it.type){
            RoomTypeDto.econom -> RoomType.econom
            RoomTypeDto.suite -> RoomType.suite
            RoomTypeDto.president -> RoomType.president
        })
    }
    return InitialData(service = service, roomByType = rooms)
}