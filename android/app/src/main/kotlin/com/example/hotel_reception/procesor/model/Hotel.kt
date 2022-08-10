package com.example.hotel_reception.procesor.model

import android.util.Log
import com.example.hotel_reception.procesor.WorldsClock
import com.example.hotel_reception.procesor.dto.WorldSpeed
import com.example.hotel_reception.procesor.event.EventGenerator
import com.example.hotel_reception.procesor.staff.AccountantService
import com.example.hotel_reception.procesor.staff.HotelReception
import com.example.hotel_reception.procesor.staff.HotelService
import com.example.hotel_reception.procesor.staff.RepairingSquad
import java.util.*

const val logTag = "HotelService"

class Hotel(
    private val service: Service = Service.normal,
    private val _rooms: List<HotelRoom>,
    private val worldsClock: WorldsClock,
    private var _balance: Int = 5000,
) : HotelService, AccountantService, HotelReception, RepairingSquad {
    val rooms: List<HotelRoom> get() = _rooms
    val balance: Int get() = _balance
    val monthRevenue: Int get() = _monthRevenue
    val dayRevenue: Int get() = _dayRevenue

    val today: Date get() = worldsClock.getDate()
    val currentSpeed: WorldSpeed = worldsClock.getCurrentSpeed()

    private var _monthRevenue = 0
    private var _dayRevenue = 0

    companion object {
        fun buildHotel(
            service: Service,
            roomByType: List<RoomByType>,
            worldsClock: WorldsClock
        ): Hotel {

            val rooms = mutableListOf<BasicRoom>()
            roomByType.forEach { type ->
                rooms.addAll(List(type.count) {
                    return@List BasicRoom(
                        roomType = type.roomType,
                        number = rooms.size + it
                    )
                })
            }
            return Hotel(
                service,
                _rooms = rooms.map { return@map HotelRoom(it) },
                worldsClock
            )
        }
    }

    override fun checkDesk() {
        decreaseRoomLifeTime()
        cleanRooms()
        calculateOutCome()
        checkoutCustomers()
        renewRoomsAfterRepairing()
        checkRoomsNeedRepairing()
    }


    override fun calculateIncome(inCome: Int) {
        _dayRevenue = inCome
        _monthRevenue += _dayRevenue
        _balance += _dayRevenue
        Log.i(
            logTag,
            "income $inCome"
        )
    }


    override fun calculateOutCome() {
        var outCome = 0
        outCome += service.salary
        val roomsInUseCount = _rooms.filter(HotelRoom::occupiedByCustomer).size
        outCome += roomsInUseCount * 20 + _rooms.size - roomsInUseCount
        _balance -= outCome
        Log.i(logTag, "outcome $outCome")
    }

    override fun payTaxes() {
        val tax = _monthRevenue * .1
        _balance -= tax.toInt()
        _monthRevenue = 0
        Log.i(logTag, "taxes paid, value: $tax")
    }

    override fun cleanRooms() {
        val roomsInService = _rooms.filter(HotelRoom::roomWaitingClearing)
        val indexes = roomsInService.take(service.roomPerDay).map { it.room.number }
        Log.i(
            logTag,
            "clearRoom, rooms in progress ${indexes.size}, rooms currently in service ${roomsInService.size}"
        )

        indexes.forEach {
            _rooms[it].roomBusiness = EmptyRoom()
        }
    }

    override fun checkoutCustomers() {
        var checkedOutCustomers = 0
        _rooms.forEach {
            if (it.occupiedByCustomer) {
                if ((it.roomBusiness as RoomInUse).endDate == worldsClock.getDate()) {
                    checkedOutCustomers++
                    it.roomBusiness = DirtyRoom()
                }
            }
        }
        Log.i(
            logTag,
            "checkDesk ${worldsClock.getDate()}, customers checked out: $checkedOutCustomers"
        )
    }

    override fun checkInPersons(persons: List<Person>) {
        val freeRooms = _rooms.filter(HotelRoom::readyForCustomer)
        Log.i(
            logTag,
            "newPersonsArrived persons count ${persons.size} free rooms ${freeRooms.size}"
        )
        val roomsByType = freeRooms.groupBy { it.room.roomType }.toList().sortedBy {
            return@sortedBy when (it.first) {
                RoomType.president -> 1
                RoomType.suite -> 2
                else -> 3
            }
        }
        var inCome = 0
        roomsByType.forEach { roomByType ->
            val personsByPreferences =
                persons.filter { it.roomPreferences.contains(roomByType.first) }
            val freeRoomsByType = roomByType.second
            if (freeRoomsByType.isNotEmpty() && personsByPreferences.isNotEmpty()) {
                val personToCheckIn = personsByPreferences.take(freeRoomsByType.size)
                personToCheckIn.forEachIndexed { index, person ->
                    inCome += (freeRoomsByType[index].room.roomType.cost * worldsClock.getSeason().priceMultiply).toInt() * personToCheckIn[index].daysAmount
                    _rooms[freeRoomsByType[index].room.number]
                    _rooms[freeRoomsByType[index].room.number].also { room ->
                        room.roomBusiness = CustomerRoom(
                            personToCheckIn[index].startDate,
                            personToCheckIn[index].endDate
                        )
                        EventGenerator.breakEventGenerated(person)?.let {
                            if (it.completelyBreak) {
                                Log.i(
                                    logTag,
                                    "---------------------person completely break------------------"
                                )
                                room.lifetime = 0
                            } else {
                                Log.i(
                                    logTag,
                                    "---------------------person damaged room by ${it.costToRepair} ------------------"
                                )
                                Log.i(
                                    logTag,
                                    "---------------------person damaged room by ${it.daysDecrement} days------------------"
                                )

                                _balance -= it.costToRepair
                                room.lifetime -= it.daysDecrement
                            }
                        }

                    }
                }
            }
        }
        calculateIncome(inCome)
    }

    override fun checkRoomsNeedRepairing() {
        val needRepair =
            _rooms.filter { it.lifetime < 1 && !it.occupiedByCustomer && !it.repairingRoom }
        Log.i(logTag, "checkRoomsNeedRepairing, need repair count ${needRepair.size}")
        needRepair.forEach(::repairRoom)
    }

    override fun renewRoomsAfterRepairing() {
        Log.i(
            logTag,
            "renewRoomsAfterRepairing, rooms in repairing ${_rooms.filter(HotelRoom::repairingRoom)}"
        )

        val renewedRooms =
            _rooms.filter { it.repairingRoom && (it.roomBusiness as RoomInUse).endDate == worldsClock.getDate() }
        Log.i(logTag, "renewRoomsAfterRepairing, renewed rooms ${renewedRooms.size}")


        renewedRooms.forEach {
            it.roomBusiness = EmptyRoom()
            it.lifetime = 90
        }
    }

    override fun decreaseRoomLifeTime() {
        Log.i(logTag, _rooms.map { it.lifetime }.joinToString())
        _rooms.filter(HotelRoom::occupiedByCustomer).forEach { it.lifetime-- }

        Log.i(logTag, "after decrease" + _rooms.map { it.lifetime }.joinToString())

    }

    override fun repairRoom(room: HotelRoom) {
        Log.i(logTag, "room became repairing, room number ${room.room.number}")
        _balance -= room.room.roomType.repairCost
        room.roomBusiness = RepairingRoom(
            worldsClock.getDate(),
            Calendar.getInstance().apply {
                time = worldsClock.getDate()
                add(Calendar.DATE, 5)
            }.time
        )
    }


}

enum class Service(val roomPerDay: Int, val salary: Int) {
    normal(5, 50), medium(10, 100), expensive(15, 150),
}
