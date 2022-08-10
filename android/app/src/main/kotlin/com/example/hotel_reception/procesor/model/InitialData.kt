package com.example.hotel_reception.procesor.model

data class InitialData(val roomByType: List<RoomByType>, val service: Service, ) {

}

data class RoomByType(val count: Int, val roomType: RoomType)