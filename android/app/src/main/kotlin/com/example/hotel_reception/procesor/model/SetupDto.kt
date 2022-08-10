//package com.example.hotel_reception.procesor.model
//
//import org.json.JSONObject
//
//class SetupDto(val roomsByType: List<RoomCount>, val service: ServiceDto) {
//    companion object {
//        fun fromJson(json: String): SetupDto {
//            val data = JSONObject(json)
//            val service = data["service"].toString().toServiceType()
//            val roomsList = (data["roomsByType"] as List<*>).map {
//                val roomByType = JSONObject(it.toString())
//                val type = roomByType["type"].toString().toRoomType()
//                val count = roomByType["count"].toString().toIntOrNull() ?: 0
//                return@map RoomCount(type, count)
//            }
//            return SetupDto(roomsList, service)
//        }
//    }
//
//}
//
//data class RoomCount(val type: RoomTypeDto, val count: Int)
//
//enum class ServiceDto {
//    normal,
//    medium,
//    expensive,
//}
//
//fun String.toServiceType(): ServiceDto {
//    return when (this) {
//        ServiceDto.normal.name -> ServiceDto.normal
//        ServiceDto.medium.name -> ServiceDto.medium
//        ServiceDto.expensive.name -> ServiceDto.expensive
//        else -> throw Exception("Unsupported type $this")
//    }
//}
//
//enum class RoomTypeDto {
//    econom,
//    suite,
//    president,
//}
//
//fun String.toRoomType(): RoomTypeDto {
//    return when (this) {
//        RoomTypeDto.econom.name -> RoomTypeDto.econom
//        RoomTypeDto.suite.name -> RoomTypeDto.suite
//        RoomTypeDto.president.name -> RoomTypeDto.president
//        else -> throw Exception("Unsupported type $this")
//    }
//}