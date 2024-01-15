import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/main_home/app_bar/app_bar.dart';
import 'package:dentsu_interview/main_home/bottom_navigation/bottom_navigation_provider.dart';
import 'package:dentsu_interview/main_home/bottom_navigation/bottom_navigation_widget.dart';
import 'package:dentsu_interview/main_home/home_widgets/home.dart';
import 'package:dentsu_interview/main_home/leads/leads_widget.dart';
import 'package:dentsu_interview/main_home/quotes/quotes_page.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppAppBar(),
      backgroundColor: DentsuColors.lightGreyLight,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: [
            const HomeWidget(),
            const LeadsWidget(),
            const QuotesPage()
          ][ref.watch(bottomNavigationStateNotifierProvider)]),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
