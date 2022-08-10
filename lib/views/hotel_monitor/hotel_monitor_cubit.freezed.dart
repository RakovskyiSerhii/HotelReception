// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel_monitor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelMonitorState {
  HotelMonitorModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelMonitorModel model) initial,
    required TResult Function(HotelMonitorModel model) monitiring,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HotelMonitorModel model)? initial,
    TResult Function(HotelMonitorModel model)? monitiring,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelMonitorModel model)? initial,
    TResult Function(HotelMonitorModel model)? monitiring,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Monitoring value) monitiring,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Monitoring value)? monitiring,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Monitoring value)? monitiring,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelMonitorStateCopyWith<HotelMonitorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelMonitorStateCopyWith<$Res> {
  factory $HotelMonitorStateCopyWith(
          HotelMonitorState value, $Res Function(HotelMonitorState) then) =
      _$HotelMonitorStateCopyWithImpl<$Res>;
  $Res call({HotelMonitorModel model});

  $HotelMonitorModelCopyWith<$Res> get model;
}

/// @nodoc
class _$HotelMonitorStateCopyWithImpl<$Res>
    implements $HotelMonitorStateCopyWith<$Res> {
  _$HotelMonitorStateCopyWithImpl(this._value, this._then);

  final HotelMonitorState _value;
  // ignore: unused_field
  final $Res Function(HotelMonitorState) _then;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as HotelMonitorModel,
    ));
  }

  @override
  $HotelMonitorModelCopyWith<$Res> get model {
    return $HotelMonitorModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $HotelMonitorStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({HotelMonitorModel model});

  @override
  $HotelMonitorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HotelMonitorStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_Initial(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as HotelMonitorModel,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.model);

  @override
  final HotelMonitorModel model;

  @override
  String toString() {
    return 'HotelMonitorState.initial(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelMonitorModel model) initial,
    required TResult Function(HotelMonitorModel model) monitiring,
  }) {
    return initial(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HotelMonitorModel model)? initial,
    TResult Function(HotelMonitorModel model)? monitiring,
  }) {
    return initial?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelMonitorModel model)? initial,
    TResult Function(HotelMonitorModel model)? monitiring,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Monitoring value) monitiring,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Monitoring value)? monitiring,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Monitoring value)? monitiring,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HotelMonitorState {
  const factory _Initial(final HotelMonitorModel model) = _$_Initial;

  @override
  HotelMonitorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MonitoringCopyWith<$Res>
    implements $HotelMonitorStateCopyWith<$Res> {
  factory _$$_MonitoringCopyWith(
          _$_Monitoring value, $Res Function(_$_Monitoring) then) =
      __$$_MonitoringCopyWithImpl<$Res>;
  @override
  $Res call({HotelMonitorModel model});

  @override
  $HotelMonitorModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_MonitoringCopyWithImpl<$Res>
    extends _$HotelMonitorStateCopyWithImpl<$Res>
    implements _$$_MonitoringCopyWith<$Res> {
  __$$_MonitoringCopyWithImpl(
      _$_Monitoring _value, $Res Function(_$_Monitoring) _then)
      : super(_value, (v) => _then(v as _$_Monitoring));

  @override
  _$_Monitoring get _value => super._value as _$_Monitoring;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_Monitoring(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as HotelMonitorModel,
    ));
  }
}

/// @nodoc

class _$_Monitoring implements _Monitoring {
  const _$_Monitoring(this.model);

  @override
  final HotelMonitorModel model;

  @override
  String toString() {
    return 'HotelMonitorState.monitiring(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Monitoring &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$_MonitoringCopyWith<_$_Monitoring> get copyWith =>
      __$$_MonitoringCopyWithImpl<_$_Monitoring>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelMonitorModel model) initial,
    required TResult Function(HotelMonitorModel model) monitiring,
  }) {
    return monitiring(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(HotelMonitorModel model)? initial,
    TResult Function(HotelMonitorModel model)? monitiring,
  }) {
    return monitiring?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelMonitorModel model)? initial,
    TResult Function(HotelMonitorModel model)? monitiring,
    required TResult orElse(),
  }) {
    if (monitiring != null) {
      return monitiring(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Monitoring value) monitiring,
  }) {
    return monitiring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Monitoring value)? monitiring,
  }) {
    return monitiring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Monitoring value)? monitiring,
    required TResult orElse(),
  }) {
    if (monitiring != null) {
      return monitiring(this);
    }
    return orElse();
  }
}

abstract class _Monitoring implements HotelMonitorState {
  const factory _Monitoring(final HotelMonitorModel model) = _$_Monitoring;

  @override
  HotelMonitorModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_MonitoringCopyWith<_$_Monitoring> get copyWith =>
      throw _privateConstructorUsedError;
}
