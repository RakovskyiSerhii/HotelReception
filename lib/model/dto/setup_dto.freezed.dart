// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setup_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetupDto _$SetupDtoFromJson(Map<String, dynamic> json) {
  return _SetupDto.fromJson(json);
}

/// @nodoc
mixin _$SetupDto {
  List<RoomCount> get roomsByType => throw _privateConstructorUsedError;
  Service get service => throw _privateConstructorUsedError;
  int get dayTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetupDtoCopyWith<SetupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupDtoCopyWith<$Res> {
  factory $SetupDtoCopyWith(SetupDto value, $Res Function(SetupDto) then) =
      _$SetupDtoCopyWithImpl<$Res>;
  $Res call({List<RoomCount> roomsByType, Service service, int dayTime});
}

/// @nodoc
class _$SetupDtoCopyWithImpl<$Res> implements $SetupDtoCopyWith<$Res> {
  _$SetupDtoCopyWithImpl(this._value, this._then);

  final SetupDto _value;
  // ignore: unused_field
  final $Res Function(SetupDto) _then;

  @override
  $Res call({
    Object? roomsByType = freezed,
    Object? service = freezed,
    Object? dayTime = freezed,
  }) {
    return _then(_value.copyWith(
      roomsByType: roomsByType == freezed
          ? _value.roomsByType
          : roomsByType // ignore: cast_nullable_to_non_nullable
              as List<RoomCount>,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      dayTime: dayTime == freezed
          ? _value.dayTime
          : dayTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SetupDtoCopyWith<$Res> implements $SetupDtoCopyWith<$Res> {
  factory _$$_SetupDtoCopyWith(
          _$_SetupDto value, $Res Function(_$_SetupDto) then) =
      __$$_SetupDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<RoomCount> roomsByType, Service service, int dayTime});
}

/// @nodoc
class __$$_SetupDtoCopyWithImpl<$Res> extends _$SetupDtoCopyWithImpl<$Res>
    implements _$$_SetupDtoCopyWith<$Res> {
  __$$_SetupDtoCopyWithImpl(
      _$_SetupDto _value, $Res Function(_$_SetupDto) _then)
      : super(_value, (v) => _then(v as _$_SetupDto));

  @override
  _$_SetupDto get _value => super._value as _$_SetupDto;

  @override
  $Res call({
    Object? roomsByType = freezed,
    Object? service = freezed,
    Object? dayTime = freezed,
  }) {
    return _then(_$_SetupDto(
      roomsByType: roomsByType == freezed
          ? _value._roomsByType
          : roomsByType // ignore: cast_nullable_to_non_nullable
              as List<RoomCount>,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
      dayTime: dayTime == freezed
          ? _value.dayTime
          : dayTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SetupDto implements _SetupDto {
  _$_SetupDto(
      {required final List<RoomCount> roomsByType,
      required this.service,
      this.dayTime = 1})
      : _roomsByType = roomsByType;

  factory _$_SetupDto.fromJson(Map<String, dynamic> json) =>
      _$$_SetupDtoFromJson(json);

  final List<RoomCount> _roomsByType;
  @override
  List<RoomCount> get roomsByType {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomsByType);
  }

  @override
  final Service service;
  @override
  @JsonKey()
  final int dayTime;

  @override
  String toString() {
    return 'SetupDto(roomsByType: $roomsByType, service: $service, dayTime: $dayTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetupDto &&
            const DeepCollectionEquality()
                .equals(other._roomsByType, _roomsByType) &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality().equals(other.dayTime, dayTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_roomsByType),
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(dayTime));

  @JsonKey(ignore: true)
  @override
  _$$_SetupDtoCopyWith<_$_SetupDto> get copyWith =>
      __$$_SetupDtoCopyWithImpl<_$_SetupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SetupDtoToJson(
      this,
    );
  }
}

abstract class _SetupDto implements SetupDto {
  factory _SetupDto(
      {required final List<RoomCount> roomsByType,
      required final Service service,
      final int dayTime}) = _$_SetupDto;

  factory _SetupDto.fromJson(Map<String, dynamic> json) = _$_SetupDto.fromJson;

  @override
  List<RoomCount> get roomsByType;
  @override
  Service get service;
  @override
  int get dayTime;
  @override
  @JsonKey(ignore: true)
  _$$_SetupDtoCopyWith<_$_SetupDto> get copyWith =>
      throw _privateConstructorUsedError;
}
