// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_buisiness_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomBusinessType _$RoomBusinessTypeFromJson(Map<String, dynamic> json) {
  return _RoomBuisinessType.fromJson(json);
}

/// @nodoc
mixin _$RoomBusinessType {
  RoomBusinessTypeEnum get type => throw _privateConstructorUsedError;
  int get daysOccupation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomBusinessTypeCopyWith<RoomBusinessType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBusinessTypeCopyWith<$Res> {
  factory $RoomBusinessTypeCopyWith(
          RoomBusinessType value, $Res Function(RoomBusinessType) then) =
      _$RoomBusinessTypeCopyWithImpl<$Res>;
  $Res call({RoomBusinessTypeEnum type, int daysOccupation});
}

/// @nodoc
class _$RoomBusinessTypeCopyWithImpl<$Res>
    implements $RoomBusinessTypeCopyWith<$Res> {
  _$RoomBusinessTypeCopyWithImpl(this._value, this._then);

  final RoomBusinessType _value;
  // ignore: unused_field
  final $Res Function(RoomBusinessType) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? daysOccupation = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RoomBusinessTypeEnum,
      daysOccupation: daysOccupation == freezed
          ? _value.daysOccupation
          : daysOccupation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomBuisinessTypeCopyWith<$Res>
    implements $RoomBusinessTypeCopyWith<$Res> {
  factory _$$_RoomBuisinessTypeCopyWith(_$_RoomBuisinessType value,
          $Res Function(_$_RoomBuisinessType) then) =
      __$$_RoomBuisinessTypeCopyWithImpl<$Res>;
  @override
  $Res call({RoomBusinessTypeEnum type, int daysOccupation});
}

/// @nodoc
class __$$_RoomBuisinessTypeCopyWithImpl<$Res>
    extends _$RoomBusinessTypeCopyWithImpl<$Res>
    implements _$$_RoomBuisinessTypeCopyWith<$Res> {
  __$$_RoomBuisinessTypeCopyWithImpl(
      _$_RoomBuisinessType _value, $Res Function(_$_RoomBuisinessType) _then)
      : super(_value, (v) => _then(v as _$_RoomBuisinessType));

  @override
  _$_RoomBuisinessType get _value => super._value as _$_RoomBuisinessType;

  @override
  $Res call({
    Object? type = freezed,
    Object? daysOccupation = freezed,
  }) {
    return _then(_$_RoomBuisinessType(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RoomBusinessTypeEnum,
      daysOccupation: daysOccupation == freezed
          ? _value.daysOccupation
          : daysOccupation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomBuisinessType implements _RoomBuisinessType {
  _$_RoomBuisinessType({required this.type, required this.daysOccupation});

  factory _$_RoomBuisinessType.fromJson(Map<String, dynamic> json) =>
      _$$_RoomBuisinessTypeFromJson(json);

  @override
  final RoomBusinessTypeEnum type;
  @override
  final int daysOccupation;

  @override
  String toString() {
    return 'RoomBusinessType(type: $type, daysOccupation: $daysOccupation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomBuisinessType &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.daysOccupation, daysOccupation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(daysOccupation));

  @JsonKey(ignore: true)
  @override
  _$$_RoomBuisinessTypeCopyWith<_$_RoomBuisinessType> get copyWith =>
      __$$_RoomBuisinessTypeCopyWithImpl<_$_RoomBuisinessType>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomBuisinessTypeToJson(
      this,
    );
  }
}

abstract class _RoomBuisinessType implements RoomBusinessType {
  factory _RoomBuisinessType(
      {required final RoomBusinessTypeEnum type,
      required final int daysOccupation}) = _$_RoomBuisinessType;

  factory _RoomBuisinessType.fromJson(Map<String, dynamic> json) =
      _$_RoomBuisinessType.fromJson;

  @override
  RoomBusinessTypeEnum get type;
  @override
  int get daysOccupation;
  @override
  @JsonKey(ignore: true)
  _$$_RoomBuisinessTypeCopyWith<_$_RoomBuisinessType> get copyWith =>
      throw _privateConstructorUsedError;
}
