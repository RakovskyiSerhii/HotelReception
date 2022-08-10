package com.example.hotel_reception.procesor.staff

import com.example.hotel_reception.procesor.model.Person

interface HotelReception {
    fun checkoutCustomers()
    fun checkInPersons(persons: List<Person>)
    fun checkRoomsNeedRepairing()
    fun renewRoomsAfterRepairing()
}