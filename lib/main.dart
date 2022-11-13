import 'package:chatapp/utils/app_utils.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    !kDebugMode ? DevicePreview(builder: (_) => const MyApp()) : const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.theme,
      title: StringConstants.appName,
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      routerConfig: AppRouterConfig.route,
    );
  }
}
