import 'package:hotel_reception/model/dto/hotel_update/hotel_update.dart';
import 'package:hotel_reception/model/dto/hotel_update/room_buisiness_type.dart';
import 'package:hotel_reception/model/dto/room_count_dto.dart';
import 'package:hotel_reception/model/dto/setup_dto.dart';
import 'package:hotel_reception/model/ui/hotel_model.dart';
import 'package:hotel_reception/model/ui/net_revenue.dart';
import 'package:hotel_reception/model/ui/room_model.dart';
import 'package:hotel_reception/model/ui/world_speed.dart';
import 'package:hotel_reception/model/updater/room_updater.dart';

class HotelTools {
  static HotelMonitorModel fromDto(SetupDto setupDto) {
    return HotelMonitorModel(
        balance: 0,
        list: _buildRoomsFromSetup(setupDto.roomsByType),
        monthIncome: 0,
        date: DateTime.now(),
        worldSpeed: WorldSpeed.normal,
        netRevenue: []);
  }

  static List<RoomModel> _buildRoomsFromSetup(List<RoomCount> roomsByType) {
    int roomsCount = 0;
    return roomsByType
        .map((room) {
          final list = List.generate(
            room.count,
            (index) => RoomModel(
              number: index + 1 + roomsCount,
              roomType: room.type,
              daysOcupation: 0,
              lifeTime: 100,
              buisinessType: RoomBusinessTypeEnum.empty,
            ),
          );
          roomsCount += room.count;
          return list;
        })
        .expand((element) => element)
        .toList();
  }
}

extension HotelModelExtension on HotelMonitorModel {
  HotelMonitorModel fromUpdate(MonitorUpdate hotelUpdate) {
    return HotelMonitorModel(
        balance: hotelUpdate.balance,
        list: list.updateWith(hotelUpdate.rooms),
        monthIncome: monthIncome + hotelUpdate.dayIncome,
        date: DateTime.fromMillisecondsSinceEpoch(hotelUpdate.date),
        worldSpeed: hotelUpdate.worldSpeed,
        netRevenue: [
          ...netRevenue,
          NetRevenue(
              dateTime: DateTime.fromMillisecondsSinceEpoch(hotelUpdate.date),
              value: hotelUpdate.dayIncome),
        ]);
  }
}
