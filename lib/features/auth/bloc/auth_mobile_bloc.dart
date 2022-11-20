import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_mobile_bloc.freezed.dart';
part 'auth_mobile_event.dart';
part 'auth_mobile_state.dart';

class AuthMobileBloc extends Bloc<AuthMobileEvent, AuthMobileState> {
  AuthMobileBloc() : super(const _Initial()) {
    on<AuthMobileEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
