part of 'internetchecker_bloc.dart';

@freezed
class InternetCheckerState with _$InternetCheckerState {
  const factory InternetCheckerState({required bool isConnected}) =
      _InternetCheckerState;
  factory InternetCheckerState.initial(bool isCon) =>
      InternetCheckerState(isConnected: isCon);
}
