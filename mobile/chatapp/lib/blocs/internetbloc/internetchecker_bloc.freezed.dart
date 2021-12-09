// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internetchecker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetCheckerEventTearOff {
  const _$InternetCheckerEventTearOff();

  InternetCheckerCheckConnection checkConnection() {
    return const InternetCheckerCheckConnection();
  }

  UpdateInternetStatus updateInternetStatus(bool updatedStatus) {
    return UpdateInternetStatus(
      updatedStatus,
    );
  }
}

/// @nodoc
const $InternetCheckerEvent = _$InternetCheckerEventTearOff();

/// @nodoc
mixin _$InternetCheckerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function(bool updatedStatus) updateInternetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool updatedStatus)? updateInternetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool updatedStatus)? updateInternetStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetCheckerCheckConnection value)
        checkConnection,
    required TResult Function(UpdateInternetStatus value) updateInternetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternetCheckerCheckConnection value)? checkConnection,
    TResult Function(UpdateInternetStatus value)? updateInternetStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetCheckerCheckConnection value)? checkConnection,
    TResult Function(UpdateInternetStatus value)? updateInternetStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckerEventCopyWith<$Res> {
  factory $InternetCheckerEventCopyWith(InternetCheckerEvent value,
          $Res Function(InternetCheckerEvent) then) =
      _$InternetCheckerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetCheckerEventCopyWithImpl<$Res>
    implements $InternetCheckerEventCopyWith<$Res> {
  _$InternetCheckerEventCopyWithImpl(this._value, this._then);

  final InternetCheckerEvent _value;
  // ignore: unused_field
  final $Res Function(InternetCheckerEvent) _then;
}

/// @nodoc
abstract class $InternetCheckerCheckConnectionCopyWith<$Res> {
  factory $InternetCheckerCheckConnectionCopyWith(
          InternetCheckerCheckConnection value,
          $Res Function(InternetCheckerCheckConnection) then) =
      _$InternetCheckerCheckConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetCheckerCheckConnectionCopyWithImpl<$Res>
    extends _$InternetCheckerEventCopyWithImpl<$Res>
    implements $InternetCheckerCheckConnectionCopyWith<$Res> {
  _$InternetCheckerCheckConnectionCopyWithImpl(
      InternetCheckerCheckConnection _value,
      $Res Function(InternetCheckerCheckConnection) _then)
      : super(_value, (v) => _then(v as InternetCheckerCheckConnection));

  @override
  InternetCheckerCheckConnection get _value =>
      super._value as InternetCheckerCheckConnection;
}

/// @nodoc

class _$InternetCheckerCheckConnection
    implements InternetCheckerCheckConnection {
  const _$InternetCheckerCheckConnection();

  @override
  String toString() {
    return 'InternetCheckerEvent.checkConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternetCheckerCheckConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function(bool updatedStatus) updateInternetStatus,
  }) {
    return checkConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool updatedStatus)? updateInternetStatus,
  }) {
    return checkConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool updatedStatus)? updateInternetStatus,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetCheckerCheckConnection value)
        checkConnection,
    required TResult Function(UpdateInternetStatus value) updateInternetStatus,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternetCheckerCheckConnection value)? checkConnection,
    TResult Function(UpdateInternetStatus value)? updateInternetStatus,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetCheckerCheckConnection value)? checkConnection,
    TResult Function(UpdateInternetStatus value)? updateInternetStatus,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class InternetCheckerCheckConnection implements InternetCheckerEvent {
  const factory InternetCheckerCheckConnection() =
      _$InternetCheckerCheckConnection;
}

/// @nodoc
abstract class $UpdateInternetStatusCopyWith<$Res> {
  factory $UpdateInternetStatusCopyWith(UpdateInternetStatus value,
          $Res Function(UpdateInternetStatus) then) =
      _$UpdateInternetStatusCopyWithImpl<$Res>;
  $Res call({bool updatedStatus});
}

/// @nodoc
class _$UpdateInternetStatusCopyWithImpl<$Res>
    extends _$InternetCheckerEventCopyWithImpl<$Res>
    implements $UpdateInternetStatusCopyWith<$Res> {
  _$UpdateInternetStatusCopyWithImpl(
      UpdateInternetStatus _value, $Res Function(UpdateInternetStatus) _then)
      : super(_value, (v) => _then(v as UpdateInternetStatus));

  @override
  UpdateInternetStatus get _value => super._value as UpdateInternetStatus;

  @override
  $Res call({
    Object? updatedStatus = freezed,
  }) {
    return _then(UpdateInternetStatus(
      updatedStatus == freezed
          ? _value.updatedStatus
          : updatedStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateInternetStatus implements UpdateInternetStatus {
  _$UpdateInternetStatus(this.updatedStatus);

  @override
  final bool updatedStatus;

  @override
  String toString() {
    return 'InternetCheckerEvent.updateInternetStatus(updatedStatus: $updatedStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateInternetStatus &&
            const DeepCollectionEquality()
                .equals(other.updatedStatus, updatedStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updatedStatus));

  @JsonKey(ignore: true)
  @override
  $UpdateInternetStatusCopyWith<UpdateInternetStatus> get copyWith =>
      _$UpdateInternetStatusCopyWithImpl<UpdateInternetStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConnection,
    required TResult Function(bool updatedStatus) updateInternetStatus,
  }) {
    return updateInternetStatus(updatedStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool updatedStatus)? updateInternetStatus,
  }) {
    return updateInternetStatus?.call(updatedStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConnection,
    TResult Function(bool updatedStatus)? updateInternetStatus,
    required TResult orElse(),
  }) {
    if (updateInternetStatus != null) {
      return updateInternetStatus(updatedStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InternetCheckerCheckConnection value)
        checkConnection,
    required TResult Function(UpdateInternetStatus value) updateInternetStatus,
  }) {
    return updateInternetStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InternetCheckerCheckConnection value)? checkConnection,
    TResult Function(UpdateInternetStatus value)? updateInternetStatus,
  }) {
    return updateInternetStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InternetCheckerCheckConnection value)? checkConnection,
    TResult Function(UpdateInternetStatus value)? updateInternetStatus,
    required TResult orElse(),
  }) {
    if (updateInternetStatus != null) {
      return updateInternetStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateInternetStatus implements InternetCheckerEvent {
  factory UpdateInternetStatus(bool updatedStatus) = _$UpdateInternetStatus;

  bool get updatedStatus;
  @JsonKey(ignore: true)
  $UpdateInternetStatusCopyWith<UpdateInternetStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InternetCheckerStateTearOff {
  const _$InternetCheckerStateTearOff();

  _InternetCheckerState call({required bool isConnected}) {
    return _InternetCheckerState(
      isConnected: isConnected,
    );
  }
}

/// @nodoc
const $InternetCheckerState = _$InternetCheckerStateTearOff();

/// @nodoc
mixin _$InternetCheckerState {
  bool get isConnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetCheckerStateCopyWith<InternetCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetCheckerStateCopyWith<$Res> {
  factory $InternetCheckerStateCopyWith(InternetCheckerState value,
          $Res Function(InternetCheckerState) then) =
      _$InternetCheckerStateCopyWithImpl<$Res>;
  $Res call({bool isConnected});
}

/// @nodoc
class _$InternetCheckerStateCopyWithImpl<$Res>
    implements $InternetCheckerStateCopyWith<$Res> {
  _$InternetCheckerStateCopyWithImpl(this._value, this._then);

  final InternetCheckerState _value;
  // ignore: unused_field
  final $Res Function(InternetCheckerState) _then;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_value.copyWith(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InternetCheckerStateCopyWith<$Res>
    implements $InternetCheckerStateCopyWith<$Res> {
  factory _$InternetCheckerStateCopyWith(_InternetCheckerState value,
          $Res Function(_InternetCheckerState) then) =
      __$InternetCheckerStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isConnected});
}

/// @nodoc
class __$InternetCheckerStateCopyWithImpl<$Res>
    extends _$InternetCheckerStateCopyWithImpl<$Res>
    implements _$InternetCheckerStateCopyWith<$Res> {
  __$InternetCheckerStateCopyWithImpl(
      _InternetCheckerState _value, $Res Function(_InternetCheckerState) _then)
      : super(_value, (v) => _then(v as _InternetCheckerState));

  @override
  _InternetCheckerState get _value => super._value as _InternetCheckerState;

  @override
  $Res call({
    Object? isConnected = freezed,
  }) {
    return _then(_InternetCheckerState(
      isConnected: isConnected == freezed
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InternetCheckerState implements _InternetCheckerState {
  const _$_InternetCheckerState({required this.isConnected});

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'InternetCheckerState(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InternetCheckerState &&
            const DeepCollectionEquality()
                .equals(other.isConnected, isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isConnected));

  @JsonKey(ignore: true)
  @override
  _$InternetCheckerStateCopyWith<_InternetCheckerState> get copyWith =>
      __$InternetCheckerStateCopyWithImpl<_InternetCheckerState>(
          this, _$identity);
}

abstract class _InternetCheckerState implements InternetCheckerState {
  const factory _InternetCheckerState({required bool isConnected}) =
      _$_InternetCheckerState;

  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$InternetCheckerStateCopyWith<_InternetCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}
