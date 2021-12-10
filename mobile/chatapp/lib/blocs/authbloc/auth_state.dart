part of 'auth_bloc.dart';

@immutable
abstract class AuthState {
  final Map<String, dynamic> user;
  const AuthState(this.user);
}

class AuthInitial extends AuthState {
  final Map<String, dynamic>? currentUser;
  AuthInitial(this.currentUser) : super(currentUser ?? {});
}

class LoginError extends AuthState {
  final String errorMessage;
  LoginError(this.errorMessage) : super({});
}

class LoginDone extends AuthState {
  final User currentUser;
  LoginDone(this.currentUser) : super(currentUser.toMap());
}

class LoginLoading extends AuthState {
  LoginLoading() : super({});
}

class SignUpError extends AuthState {
  final String errorMessage;
  SignUpError(this.errorMessage) : super({});
}

class SignUpLoading extends AuthState {
  SignUpLoading() : super({});
}

class SignUpDone extends AuthState {
  final User currentUser;
  SignUpDone(this.currentUser) : super(currentUser.toMap());
}

class EmailVerifyLoading extends AuthState {
  EmailVerifyLoading() : super({});
}

class EmailVerifyLoaded extends AuthState {
  final User currentUser;
  EmailVerifyLoaded(this.currentUser) : super(currentUser.toMap());
}

class EmailVerifyError extends AuthState {
  final String message;
  final User currentUser;
  EmailVerifyError(this.message, this.currentUser) : super(currentUser.toMap());
}

class AuthNoInternet extends EmailVerifyLoaded {
  final bool isConnected;
  final User u;
  AuthNoInternet(this.isConnected, this.u) : super(u);
}
