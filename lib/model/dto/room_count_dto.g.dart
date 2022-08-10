// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomCount _$$_RoomCountFromJson(Map<String, dynamic> json) => _$_RoomCount(
      type: $enumDecode(_$RoomTypeEnumMap, json['type']),
      count: json['count'] as int,
    );

Map<String, dynamic> _$$_RoomCountToJson(_$_RoomCount instance) =>
    <String, dynamic>{
      'type': _$RoomTypeEnumMap[instance.type]!,
      'count': instance.count,
    };

const _$RoomTypeEnumMap = {
  RoomType.econom: 'econom',
  RoomType.suite: 'suite',
  RoomType.president: 'president',
};
