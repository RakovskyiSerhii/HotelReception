package com.example.hotel_reception.procesor

import com.example.hotel_reception.procesor.model.Person
import com.example.hotel_reception.procesor.model.RoomType
import com.example.hotel_reception.procesor.model.Season
import java.util.*
import kotlin.math.roundToInt
import kotlin.random.Random

class PersonRandomizer {
    companion object {
        private fun randomChanceToBreak() = Random.nextDouble(0.0, 3.0)
        private fun randomChanceToCompletelyBreak() = Random.nextDouble(0.0, 1.0)
        private fun randomDaysAmount() = Random.nextInt(1, 5)
        private fun randomPersonAmount() = Random.nextInt(0, 10)

        fun generatePersonQuery(date: Date): List<Person> {
            val personCount = randomPersonAmount()
            val persons = mutableListOf<Person>()
            for (i in 0..personCount) {
                val days = randomDaysAmount()
                persons.add(
                    Person(
                        days,
                        date,
                        Calendar.getInstance().apply {
                            time = date
                            add(Calendar.DATE, days)
                        }.time,
                        randomChanceToBreak().roundToInt(),
                        randomChanceToCompletelyBreak().roundToInt(),
                        roomPreferences = generatePersonPreferences()
                    )
                )
            }
            return persons
        }

        private fun generatePersonPreferences(): List<RoomType> {
            val chance = Random.nextInt(0, 100)
            return when (chance) {
                in 71..85 -> listOf(RoomType.econom, RoomType.suite)
                in 76..100 -> listOf(RoomType.econom, RoomType.suite, RoomType.president)
                else -> listOf(RoomType.econom)
            }
        }
    }
}