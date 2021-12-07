// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SessionEventTearOff {
  const _$SessionEventTearOff();

  GetAllSessions getAllSessions() {
    return const GetAllSessions();
  }
}

/// @nodoc
const $SessionEvent = _$SessionEventTearOff();

/// @nodoc
mixin _$SessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSessions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSessions value) getAllSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllSessions value)? getAllSessions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSessions value)? getAllSessions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEventCopyWith<$Res> {
  factory $SessionEventCopyWith(
          SessionEvent value, $Res Function(SessionEvent) then) =
      _$SessionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SessionEventCopyWithImpl<$Res> implements $SessionEventCopyWith<$Res> {
  _$SessionEventCopyWithImpl(this._value, this._then);

  final SessionEvent _value;
  // ignore: unused_field
  final $Res Function(SessionEvent) _then;
}

/// @nodoc
abstract class $GetAllSessionsCopyWith<$Res> {
  factory $GetAllSessionsCopyWith(
          GetAllSessions value, $Res Function(GetAllSessions) then) =
      _$GetAllSessionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllSessionsCopyWithImpl<$Res>
    extends _$SessionEventCopyWithImpl<$Res>
    implements $GetAllSessionsCopyWith<$Res> {
  _$GetAllSessionsCopyWithImpl(
      GetAllSessions _value, $Res Function(GetAllSessions) _then)
      : super(_value, (v) => _then(v as GetAllSessions));

  @override
  GetAllSessions get _value => super._value as GetAllSessions;
}

/// @nodoc

class _$GetAllSessions implements GetAllSessions {
  const _$GetAllSessions();

  @override
  String toString() {
    return 'SessionEvent.getAllSessions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllSessions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllSessions,
  }) {
    return getAllSessions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllSessions,
  }) {
    return getAllSessions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllSessions,
    required TResult orElse(),
  }) {
    if (getAllSessions != null) {
      return getAllSessions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllSessions value) getAllSessions,
  }) {
    return getAllSessions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAllSessions value)? getAllSessions,
  }) {
    return getAllSessions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllSessions value)? getAllSessions,
    required TResult orElse(),
  }) {
    if (getAllSessions != null) {
      return getAllSessions(this);
    }
    return orElse();
  }
}

abstract class GetAllSessions implements SessionEvent {
  const factory GetAllSessions() = _$GetAllSessions;
}

/// @nodoc
class _$SessionStateTearOff {
  const _$SessionStateTearOff();

  _SessionState call(
      {required SessionList sessionList,
      required bool hasErrorOccured,
      required String errorMessage,
      required bool isLoading}) {
    return _SessionState(
      sessionList: sessionList,
      hasErrorOccured: hasErrorOccured,
      errorMessage: errorMessage,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $SessionState = _$SessionStateTearOff();

/// @nodoc
mixin _$SessionState {
  SessionList get sessionList => throw _privateConstructorUsedError;
  bool get hasErrorOccured => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionStateCopyWith<SessionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res>;
  $Res call(
      {SessionList sessionList,
      bool hasErrorOccured,
      String errorMessage,
      bool isLoading});
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res> implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  final SessionState _value;
  // ignore: unused_field
  final $Res Function(SessionState) _then;

  @override
  $Res call({
    Object? sessionList = freezed,
    Object? hasErrorOccured = freezed,
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      sessionList: sessionList == freezed
          ? _value.sessionList
          : sessionList // ignore: cast_nullable_to_non_nullable
              as SessionList,
      hasErrorOccured: hasErrorOccured == freezed
          ? _value.hasErrorOccured
          : hasErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SessionStateCopyWith<$Res>
    implements $SessionStateCopyWith<$Res> {
  factory _$SessionStateCopyWith(
          _SessionState value, $Res Function(_SessionState) then) =
      __$SessionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SessionList sessionList,
      bool hasErrorOccured,
      String errorMessage,
      bool isLoading});
}

/// @nodoc
class __$SessionStateCopyWithImpl<$Res> extends _$SessionStateCopyWithImpl<$Res>
    implements _$SessionStateCopyWith<$Res> {
  __$SessionStateCopyWithImpl(
      _SessionState _value, $Res Function(_SessionState) _then)
      : super(_value, (v) => _then(v as _SessionState));

  @override
  _SessionState get _value => super._value as _SessionState;

  @override
  $Res call({
    Object? sessionList = freezed,
    Object? hasErrorOccured = freezed,
    Object? errorMessage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_SessionState(
      sessionList: sessionList == freezed
          ? _value.sessionList
          : sessionList // ignore: cast_nullable_to_non_nullable
              as SessionList,
      hasErrorOccured: hasErrorOccured == freezed
          ? _value.hasErrorOccured
          : hasErrorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SessionState implements _SessionState {
  const _$_SessionState(
      {required this.sessionList,
      required this.hasErrorOccured,
      required this.errorMessage,
      required this.isLoading});

  @override
  final SessionList sessionList;
  @override
  final bool hasErrorOccured;
  @override
  final String errorMessage;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SessionState(sessionList: $sessionList, hasErrorOccured: $hasErrorOccured, errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SessionState &&
            const DeepCollectionEquality()
                .equals(other.sessionList, sessionList) &&
            const DeepCollectionEquality()
                .equals(other.hasErrorOccured, hasErrorOccured) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionList),
      const DeepCollectionEquality().hash(hasErrorOccured),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$SessionStateCopyWith<_SessionState> get copyWith =>
      __$SessionStateCopyWithImpl<_SessionState>(this, _$identity);
}

abstract class _SessionState implements SessionState {
  const factory _SessionState(
      {required SessionList sessionList,
      required bool hasErrorOccured,
      required String errorMessage,
      required bool isLoading}) = _$_SessionState;

  @override
  SessionList get sessionList;
  @override
  bool get hasErrorOccured;
  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$SessionStateCopyWith<_SessionState> get copyWith =>
      throw _privateConstructorUsedError;
}
