import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bloc/bloc.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_event.dart';
part 'session_state.dart';
part 'session_bloc.freezed.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  SessionBloc() : super(SessionState.initial()) {
    on<GetAllSessions>(
      (event, emit) async {
        try {
          emit(state.copyWith(isLoading: true));
          SessionList allSessionList = await APIServer.instance.getSessions();
          emit(state.copyWith(
              sessionList: allSessionList,
              isLoading: false,
              errorMessage: '',
              hasErrorOccured: false));
        } on AppwriteException catch (e) {
          emit(state.copyWith(
            sessionList: state.sessionList,
            isLoading: false,
            errorMessage: e.message ?? 'Error Occured',
            hasErrorOccured: true,
          ));
        }
      },
    );

    on<RemoveSession>((event, emit) async {
      try {
        await APIServer.instance.logoutSession(
          state.sessionList.sessions[event.pos].$id,
        );
        add(const SessionEvent.getAllSessions());
      } on AppwriteException catch (err) {
        emit(
          state.copyWith(
            errorMessage: err.message ?? 'Error Occured',
            hasErrorOccured: true,
            sessionList: state.sessionList,
          ),
        );
      }
    });
  }
}
