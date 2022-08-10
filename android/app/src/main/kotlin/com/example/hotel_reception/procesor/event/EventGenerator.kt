package com.example.hotel_reception.procesor.event

import com.example.hotel_reception.procesor.model.Person
import kotlin.random.Random

class EventGenerator {
    companion object {
        fun breakEventGenerated(person: Person): BreakEvent? {
            return Random.nextInt(0, 100).let { chance ->
                if (chance in 96..100) {
                    if (chance == 99) {
                        BreakEvent(completelyBreak = true)
                    } else {
                        BreakEvent(
                            costToRepair = Random.nextInt(200, 600),
                            daysDecrement = Random.nextInt(1, 10)
                        )
                    }
                } else {
                    null
                }
            }

        }
    }
}

data class BreakEvent(
    val completelyBreak: Boolean = false,
    val costToRepair: Int = 0,
    val daysDecrement: Int = 0,
)