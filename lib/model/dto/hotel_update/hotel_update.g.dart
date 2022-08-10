// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MonitorUpdate _$$_MonitorUpdateFromJson(Map<String, dynamic> json) =>
    _$_MonitorUpdate(
      balance: json['balance'] as int,
      dayIncome: json['dayIncome'] as int,
      date: json['date'] as int,
      rooms: (json['rooms'] as List<dynamic>)
          .map((e) => RoomUpdate.fromJson(e as Map<String, dynamic>))
          .toList(),
      worldSpeed: $enumDecode(_$WorldSpeedEnumMap, json['worldSpeed']),
    );

Map<String, dynamic> _$$_MonitorUpdateToJson(_$_MonitorUpdate instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'dayIncome': instance.dayIncome,
      'date': instance.date,
      'rooms': instance.rooms,
      'worldSpeed': _$WorldSpeedEnumMap[instance.worldSpeed]!,
    };

const _$WorldSpeedEnumMap = {
  WorldSpeed.normal: 'normal',
  WorldSpeed.fast: 'fast',
  WorldSpeed.faster: 'faster',
};
