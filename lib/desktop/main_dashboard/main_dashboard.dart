import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/desktop/main_dashboard/admin_app_bar/admin_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainDashboardPage extends StatelessWidget {
  const MainDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(),
    );
  }
}
