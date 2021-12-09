import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'internetchecker_event.dart';
part 'internetchecker_state.dart';
part 'internetchecker_bloc.freezed.dart';

class InternetCheckerBloc
    extends Bloc<InternetCheckerEvent, InternetCheckerState> {
  final Connectivity connectivity;
  late StreamSubscription _connectivityStream;
  late StreamSubscription _internetStream;
  final bool initialVal;
  InternetCheckerBloc({required this.connectivity, required this.initialVal})
      : super(InternetCheckerState.initial(initialVal)) {
    on<InternetCheckerCheckConnection>((event, emit) async {
      final result = await Connectivity().checkConnectivity();
      if (result == ConnectivityResult.none) {
        emit(state.copyWith(isConnected: false));
      } else {
        final response = await InternetConnectionChecker().hasConnection;
        emit(state.copyWith(isConnected: response));
      }
    });

    on<UpdateInternetStatus>((event, emit) {
      emit(state.copyWith(isConnected: event.updatedStatus));
    });

    _internetStream = InternetConnectionChecker().onStatusChange.listen(
      (newStatus) {
        if (newStatus == InternetConnectionStatus.connected) {
          add(InternetCheckerEvent.updateInternetStatus(true));
        } else {
          add(InternetCheckerEvent.updateInternetStatus(false));
        }
      },
    );

    _connectivityStream = Connectivity().onConnectivityChanged.listen(
      (newConnectionStatus) async {
        if (newConnectionStatus == ConnectivityResult.none) {
          add(InternetCheckerEvent.updateInternetStatus(false));
        } else {
          final response = await InternetConnectionChecker().hasConnection;
          add(InternetCheckerEvent.updateInternetStatus(response));
        }
      },
    );
  }

  @override
  Future<void> close() {
    _connectivityStream.cancel();
    _internetStream.cancel();
    return super.close();
  }
}
