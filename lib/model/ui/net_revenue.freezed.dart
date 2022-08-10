// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'net_revenue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetRevenue {
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetRevenueCopyWith<NetRevenue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetRevenueCopyWith<$Res> {
  factory $NetRevenueCopyWith(
          NetRevenue value, $Res Function(NetRevenue) then) =
      _$NetRevenueCopyWithImpl<$Res>;
  $Res call({DateTime dateTime, int value});
}

/// @nodoc
class _$NetRevenueCopyWithImpl<$Res> implements $NetRevenueCopyWith<$Res> {
  _$NetRevenueCopyWithImpl(this._value, this._then);

  final NetRevenue _value;
  // ignore: unused_field
  final $Res Function(NetRevenue) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_NetRevenueCopyWith<$Res>
    implements $NetRevenueCopyWith<$Res> {
  factory _$$_NetRevenueCopyWith(
          _$_NetRevenue value, $Res Function(_$_NetRevenue) then) =
      __$$_NetRevenueCopyWithImpl<$Res>;
  @override
  $Res call({DateTime dateTime, int value});
}

/// @nodoc
class __$$_NetRevenueCopyWithImpl<$Res> extends _$NetRevenueCopyWithImpl<$Res>
    implements _$$_NetRevenueCopyWith<$Res> {
  __$$_NetRevenueCopyWithImpl(
      _$_NetRevenue _value, $Res Function(_$_NetRevenue) _then)
      : super(_value, (v) => _then(v as _$_NetRevenue));

  @override
  _$_NetRevenue get _value => super._value as _$_NetRevenue;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_NetRevenue(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NetRevenue implements _NetRevenue {
  _$_NetRevenue({required this.dateTime, required this.value});

  @override
  final DateTime dateTime;
  @override
  final int value;

  @override
  String toString() {
    return 'NetRevenue(dateTime: $dateTime, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetRevenue &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_NetRevenueCopyWith<_$_NetRevenue> get copyWith =>
      __$$_NetRevenueCopyWithImpl<_$_NetRevenue>(this, _$identity);
}

abstract class _NetRevenue implements NetRevenue {
  factory _NetRevenue(
      {required final DateTime dateTime,
      required final int value}) = _$_NetRevenue;

  @override
  DateTime get dateTime;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$_NetRevenueCopyWith<_$_NetRevenue> get copyWith =>
      throw _privateConstructorUsedError;
}
