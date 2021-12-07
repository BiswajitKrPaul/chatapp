part of 'session_bloc.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState({
    required SessionList sessionList,
    required bool hasErrorOccured,
    required String errorMessage,
    required bool isLoading,
  }) = _SessionState;
  factory SessionState.initial() => SessionState(
        sessionList: SessionList(sessions: [], sum: 0),
        hasErrorOccured: false,
        errorMessage: '',
        isLoading: true,
      );
}
