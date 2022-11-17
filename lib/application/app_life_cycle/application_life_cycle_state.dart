part of 'application_life_cycle_cubit.dart';

@freezed
class ApplicationLifeCycleState with _$ApplicationLifeCycleState {
  const factory ApplicationLifeCycleState.inactive() = _Inactive;
  const factory ApplicationLifeCycleState.resume() = _Resume;
  const factory ApplicationLifeCycleState.detached() = _Detached;
  const factory ApplicationLifeCycleState.paused() = _Paused;

  const ApplicationLifeCycleState._();

  bool get isResumed => maybeWhen(resume: () => true, orElse: () => false);
}
