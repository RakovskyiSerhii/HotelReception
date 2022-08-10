// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomModel {
  int get number => throw _privateConstructorUsedError;
  RoomBusinessTypeEnum get buisinessType => throw _privateConstructorUsedError;
  int get daysOcupation => throw _privateConstructorUsedError;
  int get lifeTime => throw _privateConstructorUsedError;
  RoomType get roomType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res>;
  $Res call(
      {int number,
      RoomBusinessTypeEnum buisinessType,
      int daysOcupation,
      int lifeTime,
      RoomType roomType});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res> implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  final RoomModel _value;
  // ignore: unused_field
  final $Res Function(RoomModel) _then;

  @override
  $Res call({
    Object? number = freezed,
    Object? buisinessType = freezed,
    Object? daysOcupation = freezed,
    Object? lifeTime = freezed,
    Object? roomType = freezed,
  }) {
    return _then(_value.copyWith(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      buisinessType: buisinessType == freezed
          ? _value.buisinessType
          : buisinessType // ignore: cast_nullable_to_non_nullable
              as RoomBusinessTypeEnum,
      daysOcupation: daysOcupation == freezed
          ? _value.daysOcupation
          : daysOcupation // ignore: cast_nullable_to_non_nullable
              as int,
      lifeTime: lifeTime == freezed
          ? _value.lifeTime
          : lifeTime // ignore: cast_nullable_to_non_nullable
              as int,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as RoomType,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomModelCopyWith<$Res> implements $RoomModelCopyWith<$Res> {
  factory _$$_RoomModelCopyWith(
          _$_RoomModel value, $Res Function(_$_RoomModel) then) =
      __$$_RoomModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int number,
      RoomBusinessTypeEnum buisinessType,
      int daysOcupation,
      int lifeTime,
      RoomType roomType});
}

/// @nodoc
class __$$_RoomModelCopyWithImpl<$Res> extends _$RoomModelCopyWithImpl<$Res>
    implements _$$_RoomModelCopyWith<$Res> {
  __$$_RoomModelCopyWithImpl(
      _$_RoomModel _value, $Res Function(_$_RoomModel) _then)
      : super(_value, (v) => _then(v as _$_RoomModel));

  @override
  _$_RoomModel get _value => super._value as _$_RoomModel;

  @override
  $Res call({
    Object? number = freezed,
    Object? buisinessType = freezed,
    Object? daysOcupation = freezed,
    Object? lifeTime = freezed,
    Object? roomType = freezed,
  }) {
    return _then(_$_RoomModel(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      buisinessType: buisinessType == freezed
          ? _value.buisinessType
          : buisinessType // ignore: cast_nullable_to_non_nullable
              as RoomBusinessTypeEnum,
      daysOcupation: daysOcupation == freezed
          ? _value.daysOcupation
          : daysOcupation // ignore: cast_nullable_to_non_nullable
              as int,
      lifeTime: lifeTime == freezed
          ? _value.lifeTime
          : lifeTime // ignore: cast_nullable_to_non_nullable
              as int,
      roomType: roomType == freezed
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as RoomType,
    ));
  }
}

/// @nodoc

class _$_RoomModel extends _RoomModel {
  _$_RoomModel(
      {required this.number,
      required this.buisinessType,
      required this.daysOcupation,
      required this.lifeTime,
      required this.roomType})
      : super._();

  @override
  final int number;
  @override
  final RoomBusinessTypeEnum buisinessType;
  @override
  final int daysOcupation;
  @override
  final int lifeTime;
  @override
  final RoomType roomType;

  @override
  String toString() {
    return 'RoomModel(number: $number, buisinessType: $buisinessType, daysOcupation: $daysOcupation, lifeTime: $lifeTime, roomType: $roomType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomModel &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.buisinessType, buisinessType) &&
            const DeepCollectionEquality()
                .equals(other.daysOcupation, daysOcupation) &&
            const DeepCollectionEquality().equals(other.lifeTime, lifeTime) &&
            const DeepCollectionEquality().equals(other.roomType, roomType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(buisinessType),
      const DeepCollectionEquality().hash(daysOcupation),
      const DeepCollectionEquality().hash(lifeTime),
      const DeepCollectionEquality().hash(roomType));

  @JsonKey(ignore: true)
  @override
  _$$_RoomModelCopyWith<_$_RoomModel> get copyWith =>
      __$$_RoomModelCopyWithImpl<_$_RoomModel>(this, _$identity);
}

abstract class _RoomModel extends RoomModel {
  factory _RoomModel(
      {required final int number,
      required final RoomBusinessTypeEnum buisinessType,
      required final int daysOcupation,
      required final int lifeTime,
      required final RoomType roomType}) = _$_RoomModel;
  _RoomModel._() : super._();

  @override
  int get number;
  @override
  RoomBusinessTypeEnum get buisinessType;
  @override
  int get daysOcupation;
  @override
  int get lifeTime;
  @override
  RoomType get roomType;
  @override
  @JsonKey(ignore: true)
  _$$_RoomModelCopyWith<_$_RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
