import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'connection_checker_cubit.freezed.dart';
part 'connection_checker_state.dart';

@lazySingleton
class ConnectionCheckerCubit extends Cubit<ConnectionCheckerState> {
  ConnectionCheckerCubit()
      : super(const ConnectionCheckerState(hasConnection: true)) {
    _intercheckerStream =
        InternetConnectionChecker().onStatusChange.listen((event) {
      if (event == InternetConnectionStatus.connected) {
        _updateConnection(connection: true);
      } else {
        _updateConnection(connection: false);
      }
    });
  }
  late StreamSubscription<InternetConnectionStatus> _intercheckerStream;

  void _updateConnection({required bool connection}) {
    emit(state.copyWith(hasConnection: connection));
  }

  @override
  Future<void> close() {
    _intercheckerStream.cancel();
    return super.close();
  }
}
