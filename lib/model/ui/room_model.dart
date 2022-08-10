import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/model/dto/hotel_update/room_buisiness_type.dart';
import 'package:hotel_reception/model/room_type.dart';

part 'room_model.freezed.dart';

@freezed
class RoomModel with _$RoomModel {
  RoomModel._();

  factory RoomModel({
    required int number,
    required RoomBusinessTypeEnum buisinessType,
    required int daysOcupation,
    required int lifeTime,
    required RoomType roomType,
  }) = _RoomModel;
}
