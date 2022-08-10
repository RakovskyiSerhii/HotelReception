import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_reception/model/dto/room_count_dto.dart';
import 'package:hotel_reception/model/service.dart';

part 'setup_dto.freezed.dart';
part 'setup_dto.g.dart';

@freezed
class SetupDto with _$SetupDto {
  factory SetupDto({
    required List<RoomCount> roomsByType,
    required Service service,
    @Default(1) int dayTime,
  }) = _SetupDto;

  factory SetupDto.fromJson(Map<String, dynamic> json) =>
      _$SetupDtoFromJson(json);
}
