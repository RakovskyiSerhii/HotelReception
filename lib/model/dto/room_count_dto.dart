import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/model/room_type.dart';

part 'room_count_dto.freezed.dart';
part 'room_count_dto.g.dart';

@freezed
class RoomCount with _$RoomCount {
  factory RoomCount({
    required RoomType type,
    required int count,
  }) = _RoomCount;

    factory RoomCount.fromJson(Map<String, dynamic> json) => _$RoomCountFromJson(json);

}


