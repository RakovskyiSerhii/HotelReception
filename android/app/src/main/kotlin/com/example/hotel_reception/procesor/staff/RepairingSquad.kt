package com.example.hotel_reception.procesor.staff

import com.example.hotel_reception.procesor.model.HotelRoom

interface RepairingSquad {
    fun decreaseRoomLifeTime()
    fun repairRoom(room: HotelRoom)
}