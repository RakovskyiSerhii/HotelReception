package com.example.hotel_reception.procesor

import android.util.Log
import com.example.hotel_reception.procesor.convertors.convertToUpdate
import com.example.hotel_reception.procesor.model.*
import java.util.*

class Processor(
    private val world: World,
    private val notifier: ChannelNotifier,
    initialData: InitialData,
) :
    WorldDateChanged {
    private val hotel: Hotel

    init {
        world.subscribeOnDateChanges(this)
        hotel = Hotel.buildHotel(initialData.service, initialData.roomByType, world)
        world.startWorld()
    }

    override fun onDateChanged() {
        hotel.checkDesk()
        hotel.checkInPersons(PersonRandomizer.generatePersonQuery(world.getDate()))
        if (world.getDayOfMonth() == 30) hotel.payTaxes()
        Log.i(logTag, "date: ${world.getDate()} balance: ${hotel.balance}")
        notifier.notifyChannel(hotel.convertToUpdate())
    }
}


interface ChannelNotifier {
    fun notifyChannel(data: String)
}