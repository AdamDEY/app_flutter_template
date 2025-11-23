import 'package:flutter/material.dart';
import 'package:flutter_template/core/theme/app_theme.dart';
import 'package:flutter_template/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // Connects to your GoRouter configuration
      routerConfig: goRouter,

      title: 'Flutter Starter',
      debugShowCheckedModeBanner: false,

      // Basic Theme Setup
      theme: AppTheme.lightTheme,
    );
  }
}
