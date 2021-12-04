part of 'sessionlist_bloc.dart';

@immutable
abstract class SessionlistState {
  final SessionList sessionList;
  const SessionlistState(this.sessionList);
}

class SessionlistInitial extends SessionlistState {
  SessionlistInitial() : super(SessionList(sessions: [], sum: 0));
}

class SessionListError extends SessionlistState {
  final String error;
  SessionListError(this.error) : super(SessionList(sessions: [], sum: 0));
}

class SessionListLoaded extends SessionlistState {
  const SessionListLoaded({required SessionList sessions}) : super(sessions);
}
