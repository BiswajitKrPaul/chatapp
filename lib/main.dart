import 'package:chatapp/application/app_life_cycle/application_life_cycle_cubit.dart';
import 'package:chatapp/application/connection_checker/connection_checker_cubit.dart';
import 'package:chatapp/application/simple_bloc_observer.dart';
import 'package:chatapp/features/core/my_app.dart';
import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureInjectable(Environment.dev);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ApplicationLifeCycleCubit>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => getIt<ConnectionCheckerCubit>(),
          lazy: false,
        )
      ],
      child: const MyApp(),
    ),
  );
}
