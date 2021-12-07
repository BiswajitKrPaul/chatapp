part of 'session_bloc.dart';

@freezed
class SessionEvent with _$SessionEvent {
  const factory SessionEvent.getAllSessions() = GetAllSessions;
  const factory SessionEvent.removeSession(int pos) = RemoveSession;
}
