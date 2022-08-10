// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelMonitorModel {
  int get balance => throw _privateConstructorUsedError;
  List<RoomModel> get list => throw _privateConstructorUsedError;
  int get monthIncome => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  WorldSpeed get worldSpeed => throw _privateConstructorUsedError;
  List<NetRevenue> get netRevenue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelMonitorModelCopyWith<HotelMonitorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelMonitorModelCopyWith<$Res> {
  factory $HotelMonitorModelCopyWith(
          HotelMonitorModel value, $Res Function(HotelMonitorModel) then) =
      _$HotelMonitorModelCopyWithImpl<$Res>;
  $Res call(
      {int balance,
      List<RoomModel> list,
      int monthIncome,
      DateTime date,
      WorldSpeed worldSpeed,
      List<NetRevenue> netRevenue});
}

/// @nodoc
class _$HotelMonitorModelCopyWithImpl<$Res>
    implements $HotelMonitorModelCopyWith<$Res> {
  _$HotelMonitorModelCopyWithImpl(this._value, this._then);

  final HotelMonitorModel _value;
  // ignore: unused_field
  final $Res Function(HotelMonitorModel) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? list = freezed,
    Object? monthIncome = freezed,
    Object? date = freezed,
    Object? worldSpeed = freezed,
    Object? netRevenue = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      monthIncome: monthIncome == freezed
          ? _value.monthIncome
          : monthIncome // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      worldSpeed: worldSpeed == freezed
          ? _value.worldSpeed
          : worldSpeed // ignore: cast_nullable_to_non_nullable
              as WorldSpeed,
      netRevenue: netRevenue == freezed
          ? _value.netRevenue
          : netRevenue // ignore: cast_nullable_to_non_nullable
              as List<NetRevenue>,
    ));
  }
}

/// @nodoc
abstract class _$$_HotelModelCopyWith<$Res>
    implements $HotelMonitorModelCopyWith<$Res> {
  factory _$$_HotelModelCopyWith(
          _$_HotelModel value, $Res Function(_$_HotelModel) then) =
      __$$_HotelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int balance,
      List<RoomModel> list,
      int monthIncome,
      DateTime date,
      WorldSpeed worldSpeed,
      List<NetRevenue> netRevenue});
}

/// @nodoc
class __$$_HotelModelCopyWithImpl<$Res>
    extends _$HotelMonitorModelCopyWithImpl<$Res>
    implements _$$_HotelModelCopyWith<$Res> {
  __$$_HotelModelCopyWithImpl(
      _$_HotelModel _value, $Res Function(_$_HotelModel) _then)
      : super(_value, (v) => _then(v as _$_HotelModel));

  @override
  _$_HotelModel get _value => super._value as _$_HotelModel;

  @override
  $Res call({
    Object? balance = freezed,
    Object? list = freezed,
    Object? monthIncome = freezed,
    Object? date = freezed,
    Object? worldSpeed = freezed,
    Object? netRevenue = freezed,
  }) {
    return _then(_$_HotelModel(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RoomModel>,
      monthIncome: monthIncome == freezed
          ? _value.monthIncome
          : monthIncome // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      worldSpeed: worldSpeed == freezed
          ? _value.worldSpeed
          : worldSpeed // ignore: cast_nullable_to_non_nullable
              as WorldSpeed,
      netRevenue: netRevenue == freezed
          ? _value._netRevenue
          : netRevenue // ignore: cast_nullable_to_non_nullable
              as List<NetRevenue>,
    ));
  }
}

/// @nodoc

class _$_HotelModel extends _HotelModel {
  _$_HotelModel(
      {required this.balance,
      required final List<RoomModel> list,
      required this.monthIncome,
      required this.date,
      required this.worldSpeed,
      required final List<NetRevenue> netRevenue})
      : _list = list,
        _netRevenue = netRevenue,
        super._();

  @override
  final int balance;
  final List<RoomModel> _list;
  @override
  List<RoomModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int monthIncome;
  @override
  final DateTime date;
  @override
  final WorldSpeed worldSpeed;
  final List<NetRevenue> _netRevenue;
  @override
  List<NetRevenue> get netRevenue {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_netRevenue);
  }

  @override
  String toString() {
    return 'HotelMonitorModel(balance: $balance, list: $list, monthIncome: $monthIncome, date: $date, worldSpeed: $worldSpeed, netRevenue: $netRevenue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotelModel &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other.monthIncome, monthIncome) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.worldSpeed, worldSpeed) &&
            const DeepCollectionEquality()
                .equals(other._netRevenue, _netRevenue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(monthIncome),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(worldSpeed),
      const DeepCollectionEquality().hash(_netRevenue));

  @JsonKey(ignore: true)
  @override
  _$$_HotelModelCopyWith<_$_HotelModel> get copyWith =>
      __$$_HotelModelCopyWithImpl<_$_HotelModel>(this, _$identity);
}

abstract class _HotelModel extends HotelMonitorModel {
  factory _HotelModel(
      {required final int balance,
      required final List<RoomModel> list,
      required final int monthIncome,
      required final DateTime date,
      required final WorldSpeed worldSpeed,
      required final List<NetRevenue> netRevenue}) = _$_HotelModel;
  _HotelModel._() : super._();

  @override
  int get balance;
  @override
  List<RoomModel> get list;
  @override
  int get monthIncome;
  @override
  DateTime get date;
  @override
  WorldSpeed get worldSpeed;
  @override
  List<NetRevenue> get netRevenue;
  @override
  @JsonKey(ignore: true)
  _$$_HotelModelCopyWith<_$_HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
