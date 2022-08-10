package com.example.hotel_reception.procesor.model

import android.os.Handler
import android.util.Log
import com.example.hotel_reception.procesor.WorldsClock
import com.example.hotel_reception.procesor.dto.WorldSpeed
import java.util.*
import java.util.concurrent.TimeUnit

class World : WorldsClock {
    private val calendar: Calendar = Calendar.getInstance()
    private val listeners: MutableList<WorldDateChanged> = mutableListOf()
    private var timer: Timer? = null
    private var worldSpeed = WorldSpeed.normal
    private fun nextDay() {
        calendar.add(Calendar.DATE, 1)
        notifyDateChanged()
    }

    override fun getDate(): Date = calendar.time

    override fun getDayOfMonth(): Int = calendar.get(Calendar.DAY_OF_MONTH)

    private fun notifyDateChanged() {
        listeners.forEach(WorldDateChanged::onDateChanged)
    }

    fun subscribeOnDateChanges(listener: WorldDateChanged) {
        listeners.add(listener)
    }

    override fun getSeason(): Season {
        return when (calendar.get(Calendar.DAY_OF_YEAR)) {
            in 1..90 -> Season.winter
            in 90..180 -> Season.spring
            in 180..270 -> Season.summer
            else -> Season.autmn
        }
    }

    fun getCurrentMultiply(): Double = getSeason().priceMultiply

    fun startWorld() {
        Log.i(logTag, "currentSpeed = ${worldSpeed.time}")
        timer = Timer()
        timer?.schedule(object : TimerTask() {
            override fun run() {
                nextDay()
            }

        }, 0, TimeUnit.MILLISECONDS.toMillis(worldSpeed.time))

    }

    override fun getCurrentSpeed() = worldSpeed
    override fun nextSpeed() {
        Log.i(logTag, "nextSpeed")
        worldSpeed = WorldSpeed.values().let {
            it.indexOf(worldSpeed).let { index ->
                if (it.indexOf(worldSpeed) == it.lastIndex) {
                    it.first()
                } else {
                    it[index+1]
                }
            }
        }
        timer?.cancel()
        startWorld()
    }


}

//inline fun Timer.schedule(
//    delay: Long,
//    crossinline action: TimerTask.() -> Unit
//): TimerTask {
//}

enum class Season(val priceMultiply: Double) {
    winter(1.5),
    spring(1.0),
    summer(1.5),
    autmn(1.0),
}

interface WorldDateChanged {
    fun onDateChanged()
}

/// [date, season,  dayOfWeek]
