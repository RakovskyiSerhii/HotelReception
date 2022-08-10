import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_buisiness_type.freezed.dart';
part 'room_buisiness_type.g.dart';

@freezed
class RoomBusinessType with _$RoomBusinessType {
  factory RoomBusinessType({
    required RoomBusinessTypeEnum type,
    required int daysOccupation,
  }) = _RoomBuisinessType;

  factory RoomBusinessType.fromJson(Map<String, dynamic> json) =>
      _$RoomBusinessTypeFromJson(json);
}

enum RoomBusinessTypeEnum {
  occupiedByCustomer,
  dirty,
  cleaning,
  repairing,
  empty,
}
