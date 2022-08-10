// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SetupDto _$$_SetupDtoFromJson(Map<String, dynamic> json) => _$_SetupDto(
      roomsByType: (json['roomsByType'] as List<dynamic>)
          .map((e) => RoomCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      service: $enumDecode(_$ServiceEnumMap, json['service']),
      dayTime: json['dayTime'] as int? ?? 1,
    );

Map<String, dynamic> _$$_SetupDtoToJson(_$_SetupDto instance) =>
    <String, dynamic>{
      'roomsByType': instance.roomsByType,
      'service': _$ServiceEnumMap[instance.service]!,
      'dayTime': instance.dayTime,
    };

const _$ServiceEnumMap = {
  Service.normal: 'normal',
  Service.medium: 'medium',
  Service.expensive: 'expensive',
};
