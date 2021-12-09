part of 'internetchecker_bloc.dart';

@freezed
class InternetCheckerEvent with _$InternetCheckerEvent {
  const factory InternetCheckerEvent.checkConnection() =
      InternetCheckerCheckConnection;

  factory InternetCheckerEvent.updateInternetStatus(bool updatedStatus) =
      UpdateInternetStatus;
}
