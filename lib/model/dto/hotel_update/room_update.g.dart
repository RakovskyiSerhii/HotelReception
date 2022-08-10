// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomUpdate _$$_RoomUpdateFromJson(Map<String, dynamic> json) =>
    _$_RoomUpdate(
      number: json['number'] as int,
      businessType: RoomBusinessType.fromJson(
          json['businessType'] as Map<String, dynamic>),
      lifetime: json['lifetime'] as int,
    );

Map<String, dynamic> _$$_RoomUpdateToJson(_$_RoomUpdate instance) =>
    <String, dynamic>{
      'number': instance.number,
      'businessType': instance.businessType,
      'lifetime': instance.lifetime,
    };
