package com.example.hotel_reception.procesor

import com.example.hotel_reception.procesor.dto.WorldSpeed
import com.example.hotel_reception.procesor.model.Season
import java.util.*

interface WorldsClock {
    fun getDate(): Date
    fun getDayOfMonth(): Int
    fun getSeason(): Season
    fun getCurrentSpeed(): WorldSpeed
    fun nextSpeed()
}