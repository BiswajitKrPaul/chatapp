import 'package:chatapp/utils/app_utils.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.theme,
      title: StringConstants.appName,
      onGenerateRoute: AppRouterConfig.route,
    );
  }
}
