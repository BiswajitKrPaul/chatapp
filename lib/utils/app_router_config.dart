import 'package:chatapp/application/connection_checker/connection_checker_cubit.dart';
import 'package:chatapp/features/auth/views/login_page.dart';
import 'package:chatapp/features/auth/views/verify_otp.dart';
import 'package:chatapp/features/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouterConfig {
  static Route<dynamic>? route(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        if (!context.watch<ConnectionCheckerCubit>().state.hasConnection) {
          return const Scaffold(
            body: Center(
              child: Text('No Internet'),
            ),
          );
        }
        switch (settings.name) {
          case LoginPage.routeName:
            return const LoginPage();
          case VerifyOtp.routeName:
            return const VerifyOtp();
          case HomePage.routeName:
            return const HomePage();
        }
        return Container();
      },
    );
  }
}
