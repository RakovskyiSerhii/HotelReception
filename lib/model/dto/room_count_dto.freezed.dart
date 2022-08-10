// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomCount _$RoomCountFromJson(Map<String, dynamic> json) {
  return _RoomCount.fromJson(json);
}

/// @nodoc
mixin _$RoomCount {
  RoomType get type => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCountCopyWith<RoomCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCountCopyWith<$Res> {
  factory $RoomCountCopyWith(RoomCount value, $Res Function(RoomCount) then) =
      _$RoomCountCopyWithImpl<$Res>;
  $Res call({RoomType type, int count});
}

/// @nodoc
class _$RoomCountCopyWithImpl<$Res> implements $RoomCountCopyWith<$Res> {
  _$RoomCountCopyWithImpl(this._value, this._then);

  final RoomCount _value;
  // ignore: unused_field
  final $Res Function(RoomCount) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RoomType,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomCountCopyWith<$Res> implements $RoomCountCopyWith<$Res> {
  factory _$$_RoomCountCopyWith(
          _$_RoomCount value, $Res Function(_$_RoomCount) then) =
      __$$_RoomCountCopyWithImpl<$Res>;
  @override
  $Res call({RoomType type, int count});
}

/// @nodoc
class __$$_RoomCountCopyWithImpl<$Res> extends _$RoomCountCopyWithImpl<$Res>
    implements _$$_RoomCountCopyWith<$Res> {
  __$$_RoomCountCopyWithImpl(
      _$_RoomCount _value, $Res Function(_$_RoomCount) _then)
      : super(_value, (v) => _then(v as _$_RoomCount));

  @override
  _$_RoomCount get _value => super._value as _$_RoomCount;

  @override
  $Res call({
    Object? type = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_RoomCount(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RoomType,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomCount implements _RoomCount {
  _$_RoomCount({required this.type, required this.count});

  factory _$_RoomCount.fromJson(Map<String, dynamic> json) =>
      _$$_RoomCountFromJson(json);

  @override
  final RoomType type;
  @override
  final int count;

  @override
  String toString() {
    return 'RoomCount(type: $type, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomCount &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_RoomCountCopyWith<_$_RoomCount> get copyWith =>
      __$$_RoomCountCopyWithImpl<_$_RoomCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomCountToJson(
      this,
    );
  }
}

abstract class _RoomCount implements RoomCount {
  factory _RoomCount({required final RoomType type, required final int count}) =
      _$_RoomCount;

  factory _RoomCount.fromJson(Map<String, dynamic> json) =
      _$_RoomCount.fromJson;

  @override
  RoomType get type;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_RoomCountCopyWith<_$_RoomCount> get copyWith =>
      throw _privateConstructorUsedError;
}
