// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_buisiness_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomBuisinessType _$$_RoomBuisinessTypeFromJson(Map<String, dynamic> json) =>
    _$_RoomBuisinessType(
      type: $enumDecode(_$RoomBusinessTypeEnumEnumMap, json['type']),
      daysOccupation: json['daysOccupation'] as int,
    );

Map<String, dynamic> _$$_RoomBuisinessTypeToJson(
        _$_RoomBuisinessType instance) =>
    <String, dynamic>{
      'type': _$RoomBusinessTypeEnumEnumMap[instance.type]!,
      'daysOccupation': instance.daysOccupation,
    };

const _$RoomBusinessTypeEnumEnumMap = {
  RoomBusinessTypeEnum.occupiedByCustomer: 'occupiedByCustomer',
  RoomBusinessTypeEnum.dirty: 'dirty',
  RoomBusinessTypeEnum.cleaning: 'cleaning',
  RoomBusinessTypeEnum.repairing: 'repairing',
  RoomBusinessTypeEnum.empty: 'empty',
};
