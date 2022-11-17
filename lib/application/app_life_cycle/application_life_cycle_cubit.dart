import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_life_cycle_cubit.freezed.dart';
part 'application_life_cycle_state.dart';

@lazySingleton
class ApplicationLifeCycleCubit extends Cubit<ApplicationLifeCycleState>
    with WidgetsBindingObserver {
  ApplicationLifeCycleCubit()
      : super(const ApplicationLifeCycleState.resume()) {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        emit(const ApplicationLifeCycleState.resume());
        break;
      case AppLifecycleState.detached:
        emit(const ApplicationLifeCycleState.detached());
        break;
      case AppLifecycleState.paused:
        emit(const ApplicationLifeCycleState.paused());
        break;
      case AppLifecycleState.inactive:
        emit(const ApplicationLifeCycleState.inactive());
        break;
    }
  }

  @override
  Future<void> close() {
    WidgetsBinding.instance.removeObserver(this);
    return super.close();
  }
}
