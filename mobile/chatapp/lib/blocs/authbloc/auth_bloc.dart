import 'dart:async';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bloc/bloc.dart';
import 'package:chatapp/blocs/internetbloc/internetchecker_bloc.dart';
import 'package:chatapp/services/api_server.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late InternetCheckerBloc internetCheckerbloc;
  late StreamSubscription _subscription;
  late Map<String, dynamic>? user;
  AuthBloc({
    required this.user,
    required this.internetCheckerbloc,
  }) : super(AuthInitial(user)) {
    on<Login>((event, emit) async {
      try {
        emit.call(LoginLoading());
        await APIServer.instance.createSession(
          event.email,
          event.password,
        );
        final user = await APIServer.instance.getLoggedInUser();
        emit.call(
          LoginDone(
            user,
          ),
        );
      } on AppwriteException catch (e) {
        emit.call(
          LoginError(
            e.message.toString(),
          ),
        );
      }
    });

    on<SignUp>(
      (event, emit) async {
        try {
          emit(SignUpLoading());
          final _user = await APIServer.instance
              .createUser(event.email, event.password, event.name);
          await APIServer.instance.createSession(event.email, event.password);
          await APIServer.instance.createVerification();
          await APIServer.instance.logout();
          emit(
            SignUpDone(_user),
          );
        } on AppwriteException catch (e) {
          emit(
            SignUpError(
              e.message.toString(),
            ),
          );
        }
      },
    );

    on<EmailVerificationCheck>(
      (event, emit) async {
        try {
          emit(
            EmailVerifyLoading(),
          );
          final user = await APIServer.instance.getLoggedInUser();
          emit(EmailVerifyLoaded(user));
        } on AppwriteException catch (e) {
          emit(
            EmailVerifyError(
              e.message.toString(),
              User.fromMap(state.user),
            ),
          );
        }
      },
    );

    on<GetAuthInternetCheck>((event, emit) async {
      emit(AuthNoInternet(event.connectionStatus, User.fromMap(state.user)));
    });
    _subscription = internetCheckerbloc.stream.listen((newState) {
      if (state.user.isNotEmpty) {
        add(GetAuthInternetCheck(connectionStatus: newState.isConnected));
      }
    });
  }
  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
