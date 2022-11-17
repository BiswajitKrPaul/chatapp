// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_life_cycle_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationLifeCycleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() resume,
    required TResult Function() detached,
    required TResult Function() paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function()? resume,
    TResult? Function()? detached,
    TResult? Function()? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? resume,
    TResult Function()? detached,
    TResult Function()? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Detached value) detached,
    required TResult Function(_Paused value) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inactive value)? inactive,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Detached value)? detached,
    TResult? Function(_Paused value)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Resume value)? resume,
    TResult Function(_Detached value)? detached,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationLifeCycleStateCopyWith<$Res> {
  factory $ApplicationLifeCycleStateCopyWith(ApplicationLifeCycleState value,
          $Res Function(ApplicationLifeCycleState) then) =
      _$ApplicationLifeCycleStateCopyWithImpl<$Res, ApplicationLifeCycleState>;
}

/// @nodoc
class _$ApplicationLifeCycleStateCopyWithImpl<$Res,
        $Val extends ApplicationLifeCycleState>
    implements $ApplicationLifeCycleStateCopyWith<$Res> {
  _$ApplicationLifeCycleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InactiveCopyWith<$Res> {
  factory _$$_InactiveCopyWith(
          _$_Inactive value, $Res Function(_$_Inactive) then) =
      __$$_InactiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InactiveCopyWithImpl<$Res>
    extends _$ApplicationLifeCycleStateCopyWithImpl<$Res, _$_Inactive>
    implements _$$_InactiveCopyWith<$Res> {
  __$$_InactiveCopyWithImpl(
      _$_Inactive _value, $Res Function(_$_Inactive) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Inactive extends _Inactive {
  const _$_Inactive() : super._();

  @override
  String toString() {
    return 'ApplicationLifeCycleState.inactive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Inactive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() resume,
    required TResult Function() detached,
    required TResult Function() paused,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function()? resume,
    TResult? Function()? detached,
    TResult? Function()? paused,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? resume,
    TResult Function()? detached,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Detached value) detached,
    required TResult Function(_Paused value) paused,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inactive value)? inactive,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Detached value)? detached,
    TResult? Function(_Paused value)? paused,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Resume value)? resume,
    TResult Function(_Detached value)? detached,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class _Inactive extends ApplicationLifeCycleState {
  const factory _Inactive() = _$_Inactive;
  const _Inactive._() : super._();
}

/// @nodoc
abstract class _$$_ResumeCopyWith<$Res> {
  factory _$$_ResumeCopyWith(_$_Resume value, $Res Function(_$_Resume) then) =
      __$$_ResumeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumeCopyWithImpl<$Res>
    extends _$ApplicationLifeCycleStateCopyWithImpl<$Res, _$_Resume>
    implements _$$_ResumeCopyWith<$Res> {
  __$$_ResumeCopyWithImpl(_$_Resume _value, $Res Function(_$_Resume) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Resume extends _Resume {
  const _$_Resume() : super._();

  @override
  String toString() {
    return 'ApplicationLifeCycleState.resume()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resume);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() resume,
    required TResult Function() detached,
    required TResult Function() paused,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function()? resume,
    TResult? Function()? detached,
    TResult? Function()? paused,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? resume,
    TResult Function()? detached,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Detached value) detached,
    required TResult Function(_Paused value) paused,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inactive value)? inactive,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Detached value)? detached,
    TResult? Function(_Paused value)? paused,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Resume value)? resume,
    TResult Function(_Detached value)? detached,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class _Resume extends ApplicationLifeCycleState {
  const factory _Resume() = _$_Resume;
  const _Resume._() : super._();
}

/// @nodoc
abstract class _$$_DetachedCopyWith<$Res> {
  factory _$$_DetachedCopyWith(
          _$_Detached value, $Res Function(_$_Detached) then) =
      __$$_DetachedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DetachedCopyWithImpl<$Res>
    extends _$ApplicationLifeCycleStateCopyWithImpl<$Res, _$_Detached>
    implements _$$_DetachedCopyWith<$Res> {
  __$$_DetachedCopyWithImpl(
      _$_Detached _value, $Res Function(_$_Detached) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Detached extends _Detached {
  const _$_Detached() : super._();

  @override
  String toString() {
    return 'ApplicationLifeCycleState.detached()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Detached);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() resume,
    required TResult Function() detached,
    required TResult Function() paused,
  }) {
    return detached();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function()? resume,
    TResult? Function()? detached,
    TResult? Function()? paused,
  }) {
    return detached?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? resume,
    TResult Function()? detached,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (detached != null) {
      return detached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Detached value) detached,
    required TResult Function(_Paused value) paused,
  }) {
    return detached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inactive value)? inactive,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Detached value)? detached,
    TResult? Function(_Paused value)? paused,
  }) {
    return detached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Resume value)? resume,
    TResult Function(_Detached value)? detached,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (detached != null) {
      return detached(this);
    }
    return orElse();
  }
}

abstract class _Detached extends ApplicationLifeCycleState {
  const factory _Detached() = _$_Detached;
  const _Detached._() : super._();
}

/// @nodoc
abstract class _$$_PausedCopyWith<$Res> {
  factory _$$_PausedCopyWith(_$_Paused value, $Res Function(_$_Paused) then) =
      __$$_PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PausedCopyWithImpl<$Res>
    extends _$ApplicationLifeCycleStateCopyWithImpl<$Res, _$_Paused>
    implements _$$_PausedCopyWith<$Res> {
  __$$_PausedCopyWithImpl(_$_Paused _value, $Res Function(_$_Paused) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Paused extends _Paused {
  const _$_Paused() : super._();

  @override
  String toString() {
    return 'ApplicationLifeCycleState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inactive,
    required TResult Function() resume,
    required TResult Function() detached,
    required TResult Function() paused,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inactive,
    TResult? Function()? resume,
    TResult? Function()? detached,
    TResult? Function()? paused,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inactive,
    TResult Function()? resume,
    TResult Function()? detached,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Resume value) resume,
    required TResult Function(_Detached value) detached,
    required TResult Function(_Paused value) paused,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inactive value)? inactive,
    TResult? Function(_Resume value)? resume,
    TResult? Function(_Detached value)? detached,
    TResult? Function(_Paused value)? paused,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Resume value)? resume,
    TResult Function(_Detached value)? detached,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused extends ApplicationLifeCycleState {
  const factory _Paused() = _$_Paused;
  const _Paused._() : super._();
}
