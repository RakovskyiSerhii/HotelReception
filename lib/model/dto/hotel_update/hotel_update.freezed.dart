// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MonitorUpdate _$MonitorUpdateFromJson(Map<String, dynamic> json) {
  return _MonitorUpdate.fromJson(json);
}

/// @nodoc
mixin _$MonitorUpdate {
  int get balance => throw _privateConstructorUsedError;
  int get dayIncome => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  List<RoomUpdate> get rooms => throw _privateConstructorUsedError;
  WorldSpeed get worldSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonitorUpdateCopyWith<MonitorUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonitorUpdateCopyWith<$Res> {
  factory $MonitorUpdateCopyWith(
          MonitorUpdate value, $Res Function(MonitorUpdate) then) =
      _$MonitorUpdateCopyWithImpl<$Res>;
  $Res call(
      {int balance,
      int dayIncome,
      int date,
      List<RoomUpdate> rooms,
      WorldSpeed worldSpeed});
}

/// @nodoc
class _$MonitorUpdateCopyWithImpl<$Res>
    implements $MonitorUpdateCopyWith<$Res> {
  _$MonitorUpdateCopyWithImpl(this._value, this._then);

  final MonitorUpdate _value;
  // ignore: unused_field
  final $Res Function(MonitorUpdate) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? dayIncome = freezed,
    Object? date = freezed,
    Object? rooms = freezed,
    Object? worldSpeed = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      dayIncome: dayIncome == freezed
          ? _value.dayIncome
          : dayIncome // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      rooms: rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomUpdate>,
      worldSpeed: worldSpeed == freezed
          ? _value.worldSpeed
          : worldSpeed // ignore: cast_nullable_to_non_nullable
              as WorldSpeed,
    ));
  }
}

/// @nodoc
abstract class _$$_MonitorUpdateCopyWith<$Res>
    implements $MonitorUpdateCopyWith<$Res> {
  factory _$$_MonitorUpdateCopyWith(
          _$_MonitorUpdate value, $Res Function(_$_MonitorUpdate) then) =
      __$$_MonitorUpdateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int balance,
      int dayIncome,
      int date,
      List<RoomUpdate> rooms,
      WorldSpeed worldSpeed});
}

/// @nodoc
class __$$_MonitorUpdateCopyWithImpl<$Res>
    extends _$MonitorUpdateCopyWithImpl<$Res>
    implements _$$_MonitorUpdateCopyWith<$Res> {
  __$$_MonitorUpdateCopyWithImpl(
      _$_MonitorUpdate _value, $Res Function(_$_MonitorUpdate) _then)
      : super(_value, (v) => _then(v as _$_MonitorUpdate));

  @override
  _$_MonitorUpdate get _value => super._value as _$_MonitorUpdate;

  @override
  $Res call({
    Object? balance = freezed,
    Object? dayIncome = freezed,
    Object? date = freezed,
    Object? rooms = freezed,
    Object? worldSpeed = freezed,
  }) {
    return _then(_$_MonitorUpdate(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      dayIncome: dayIncome == freezed
          ? _value.dayIncome
          : dayIncome // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      rooms: rooms == freezed
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<RoomUpdate>,
      worldSpeed: worldSpeed == freezed
          ? _value.worldSpeed
          : worldSpeed // ignore: cast_nullable_to_non_nullable
              as WorldSpeed,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MonitorUpdate implements _MonitorUpdate {
  _$_MonitorUpdate(
      {required this.balance,
      required this.dayIncome,
      required this.date,
      required final List<RoomUpdate> rooms,
      required this.worldSpeed})
      : _rooms = rooms;

  factory _$_MonitorUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_MonitorUpdateFromJson(json);

  @override
  final int balance;
  @override
  final int dayIncome;
  @override
  final int date;
  final List<RoomUpdate> _rooms;
  @override
  List<RoomUpdate> get rooms {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  final WorldSpeed worldSpeed;

  @override
  String toString() {
    return 'MonitorUpdate(balance: $balance, dayIncome: $dayIncome, date: $date, rooms: $rooms, worldSpeed: $worldSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonitorUpdate &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.dayIncome, dayIncome) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms) &&
            const DeepCollectionEquality()
                .equals(other.worldSpeed, worldSpeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(dayIncome),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(_rooms),
      const DeepCollectionEquality().hash(worldSpeed));

  @JsonKey(ignore: true)
  @override
  _$$_MonitorUpdateCopyWith<_$_MonitorUpdate> get copyWith =>
      __$$_MonitorUpdateCopyWithImpl<_$_MonitorUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonitorUpdateToJson(
      this,
    );
  }
}

abstract class _MonitorUpdate implements MonitorUpdate {
  factory _MonitorUpdate(
      {required final int balance,
      required final int dayIncome,
      required final int date,
      required final List<RoomUpdate> rooms,
      required final WorldSpeed worldSpeed}) = _$_MonitorUpdate;

  factory _MonitorUpdate.fromJson(Map<String, dynamic> json) =
      _$_MonitorUpdate.fromJson;

  @override
  int get balance;
  @override
  int get dayIncome;
  @override
  int get date;
  @override
  List<RoomUpdate> get rooms;
  @override
  WorldSpeed get worldSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_MonitorUpdateCopyWith<_$_MonitorUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}
