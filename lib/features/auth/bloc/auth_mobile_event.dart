part of 'auth_mobile_bloc.dart';

@freezed
class AuthMobileEvent with _$AuthMobileEvent {
  const factory AuthMobileEvent.started() = _Started;
}
