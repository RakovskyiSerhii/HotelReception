// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomUpdate _$RoomUpdateFromJson(Map<String, dynamic> json) {
  return _RoomUpdate.fromJson(json);
}

/// @nodoc
mixin _$RoomUpdate {
  int get number => throw _privateConstructorUsedError;
  RoomBusinessType get businessType => throw _privateConstructorUsedError;
  int get lifetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomUpdateCopyWith<RoomUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomUpdateCopyWith<$Res> {
  factory $RoomUpdateCopyWith(
          RoomUpdate value, $Res Function(RoomUpdate) then) =
      _$RoomUpdateCopyWithImpl<$Res>;
  $Res call({int number, RoomBusinessType businessType, int lifetime});

  $RoomBusinessTypeCopyWith<$Res> get businessType;
}

/// @nodoc
class _$RoomUpdateCopyWithImpl<$Res> implements $RoomUpdateCopyWith<$Res> {
  _$RoomUpdateCopyWithImpl(this._value, this._then);

  final RoomUpdate _value;
  // ignore: unused_field
  final $Res Function(RoomUpdate) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? businessType = freezed,
    Object? lifetime = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as RoomBusinessType,
      lifetime: lifetime == freezed
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $RoomBusinessTypeCopyWith<$Res> get businessType {
    return $RoomBusinessTypeCopyWith<$Res>(_value.businessType, (value) {
      return _then(_value.copyWith(businessType: value));
    });
  }
}

/// @nodoc
abstract class _$$_RoomUpdateCopyWith<$Res>
    implements $RoomUpdateCopyWith<$Res> {
  factory _$$_RoomUpdateCopyWith(
          _$_RoomUpdate value, $Res Function(_$_RoomUpdate) then) =
      __$$_RoomUpdateCopyWithImpl<$Res>;
  @override
  $Res call({int number, RoomBusinessType businessType, int lifetime});

  @override
  $RoomBusinessTypeCopyWith<$Res> get businessType;
}

/// @nodoc
class __$$_RoomUpdateCopyWithImpl<$Res> extends _$RoomUpdateCopyWithImpl<$Res>
    implements _$$_RoomUpdateCopyWith<$Res> {
  __$$_RoomUpdateCopyWithImpl(
      _$_RoomUpdate _value, $Res Function(_$_RoomUpdate) _then)
      : super(_value, (v) => _then(v as _$_RoomUpdate));

  @override
  _$_RoomUpdate get _value => super._value as _$_RoomUpdate;

  @override
  $Res call({
    Object? number = freezed,
    Object? businessType = freezed,
    Object? lifetime = freezed,
  }) {
    return _then(_$_RoomUpdate(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      businessType: businessType == freezed
          ? _value.businessType
          : businessType // ignore: cast_nullable_to_non_nullable
              as RoomBusinessType,
      lifetime: lifetime == freezed
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomUpdate implements _RoomUpdate {
  _$_RoomUpdate(
      {required this.number,
      required this.businessType,
      required this.lifetime});

  factory _$_RoomUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_RoomUpdateFromJson(json);

  @override
  final int number;
  @override
  final RoomBusinessType businessType;
  @override
  final int lifetime;

  @override
  String toString() {
    return 'RoomUpdate(number: $number, businessType: $businessType, lifetime: $lifetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomUpdate &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.businessType, businessType) &&
            const DeepCollectionEquality().equals(other.lifetime, lifetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(businessType),
      const DeepCollectionEquality().hash(lifetime));

  @JsonKey(ignore: true)
  @override
  _$$_RoomUpdateCopyWith<_$_RoomUpdate> get copyWith =>
      __$$_RoomUpdateCopyWithImpl<_$_RoomUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomUpdateToJson(
      this,
    );
  }
}

abstract class _RoomUpdate implements RoomUpdate {
  factory _RoomUpdate(
      {required final int number,
      required final RoomBusinessType businessType,
      required final int lifetime}) = _$_RoomUpdate;

  factory _RoomUpdate.fromJson(Map<String, dynamic> json) =
      _$_RoomUpdate.fromJson;

  @override
  int get number;
  @override
  RoomBusinessType get businessType;
  @override
  int get lifetime;
  @override
  @JsonKey(ignore: true)
  _$$_RoomUpdateCopyWith<_$_RoomUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
