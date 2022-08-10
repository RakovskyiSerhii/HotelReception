package com.example.hotel_reception.procesor.dto

enum class ServiceDto {
    normal, medium, expensive,
}

enum class RoomTypeDto {
    econom,
    suite,
    president,
}

enum class WorldSpeed(val time: Long) {
    normal(3000L), fast(2000L), faster(1000L),
}