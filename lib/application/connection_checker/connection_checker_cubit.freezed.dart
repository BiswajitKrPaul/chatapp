// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_checker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionCheckerState {
  bool get hasConnection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionCheckerStateCopyWith<ConnectionCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionCheckerStateCopyWith<$Res> {
  factory $ConnectionCheckerStateCopyWith(ConnectionCheckerState value,
          $Res Function(ConnectionCheckerState) then) =
      _$ConnectionCheckerStateCopyWithImpl<$Res, ConnectionCheckerState>;
  @useResult
  $Res call({bool hasConnection});
}

/// @nodoc
class _$ConnectionCheckerStateCopyWithImpl<$Res,
        $Val extends ConnectionCheckerState>
    implements $ConnectionCheckerStateCopyWith<$Res> {
  _$ConnectionCheckerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasConnection = null,
  }) {
    return _then(_value.copyWith(
      hasConnection: null == hasConnection
          ? _value.hasConnection
          : hasConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionCheckerStateCopyWith<$Res>
    implements $ConnectionCheckerStateCopyWith<$Res> {
  factory _$$_ConnectionCheckerStateCopyWith(_$_ConnectionCheckerState value,
          $Res Function(_$_ConnectionCheckerState) then) =
      __$$_ConnectionCheckerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasConnection});
}

/// @nodoc
class __$$_ConnectionCheckerStateCopyWithImpl<$Res>
    extends _$ConnectionCheckerStateCopyWithImpl<$Res,
        _$_ConnectionCheckerState>
    implements _$$_ConnectionCheckerStateCopyWith<$Res> {
  __$$_ConnectionCheckerStateCopyWithImpl(_$_ConnectionCheckerState _value,
      $Res Function(_$_ConnectionCheckerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasConnection = null,
  }) {
    return _then(_$_ConnectionCheckerState(
      hasConnection: null == hasConnection
          ? _value.hasConnection
          : hasConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectionCheckerState implements _ConnectionCheckerState {
  const _$_ConnectionCheckerState({required this.hasConnection});

  @override
  final bool hasConnection;

  @override
  String toString() {
    return 'ConnectionCheckerState(hasConnection: $hasConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionCheckerState &&
            (identical(other.hasConnection, hasConnection) ||
                other.hasConnection == hasConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionCheckerStateCopyWith<_$_ConnectionCheckerState> get copyWith =>
      __$$_ConnectionCheckerStateCopyWithImpl<_$_ConnectionCheckerState>(
          this, _$identity);
}

abstract class _ConnectionCheckerState implements ConnectionCheckerState {
  const factory _ConnectionCheckerState({required final bool hasConnection}) =
      _$_ConnectionCheckerState;

  @override
  bool get hasConnection;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionCheckerStateCopyWith<_$_ConnectionCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}
