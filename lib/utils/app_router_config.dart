import 'package:chatapp/features/auth/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static GoRouter get route => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginPage();
            },
          ),
          GoRoute(
            path: '/b',
            builder: (BuildContext context, GoRouterState state) {
              return Container();
            },
          ),
        ],
      );
}
