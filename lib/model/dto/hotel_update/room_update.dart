import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/model/dto/hotel_update/room_buisiness_type.dart';

part 'room_update.freezed.dart';
part 'room_update.g.dart';

@freezed
class RoomUpdate with _$RoomUpdate {
  factory RoomUpdate({
    required int number,
    required RoomBusinessType businessType,
    required int lifetime,
  }) = _RoomUpdate;

  factory RoomUpdate.fromJson(Map<String, dynamic> json) =>
      _$RoomUpdateFromJson(json);
}
