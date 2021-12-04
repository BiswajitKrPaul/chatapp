import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bloc/bloc.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:meta/meta.dart';

part 'sessionlist_event.dart';
part 'sessionlist_state.dart';

class SessionlistBloc extends Bloc<SessionlistEvent, SessionlistState> {
  SessionlistBloc() : super(SessionlistInitial()) {
    on<GetAllSession>((event, emit) async {
      try {
        SessionList allSessionList = await APIServer.instance.getSessions();
        emit(SessionListLoaded(sessions: allSessionList));
      } on AppwriteException catch (e) {
        emit(SessionListError(e.message ?? 'Error'));
      }
    });
  }
}
