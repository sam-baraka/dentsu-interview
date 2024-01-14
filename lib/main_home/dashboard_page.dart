import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/main_home/bottom_navigation/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
