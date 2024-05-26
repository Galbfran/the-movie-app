import 'package:flutter/material.dart';
import 'package:the_movie/config/router/app_router.dart';
import 'package:the_movie/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'The Movie app',
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}



