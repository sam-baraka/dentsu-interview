import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Dentsu Interview',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: DentsuColors.purple),
        useMaterial3: true,
      ),
    );
  }
}
