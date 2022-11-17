part of 'connection_checker_cubit.dart';

@freezed
class ConnectionCheckerState with _$ConnectionCheckerState {
  const factory ConnectionCheckerState({required bool hasConnection}) =
      _ConnectionCheckerState;
}
