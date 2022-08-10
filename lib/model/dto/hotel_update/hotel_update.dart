import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/model/dto/hotel_update/room_update.dart';
import 'package:hotel_reception/model/dto/hotel_update/world_speed_dto.dart';
import 'package:hotel_reception/model/ui/world_speed.dart';

part 'hotel_update.freezed.dart';
part 'hotel_update.g.dart';

@freezed
class MonitorUpdate with _$MonitorUpdate {
  factory MonitorUpdate({
    required int balance,
    required int dayIncome,
    required int date,
    required List<RoomUpdate> rooms,
    required WorldSpeed worldSpeed, 
  }) = _MonitorUpdate;

  factory MonitorUpdate.fromJson(Map<String, dynamic> json) =>
      _$MonitorUpdateFromJson(json);
}
