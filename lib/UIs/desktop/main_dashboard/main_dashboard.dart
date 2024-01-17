import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/UIs/desktop/main_dashboard/admin_app_bar/admin_app_bar.dart';
import 'package:dentsu_interview/UIs/desktop/main_dashboard/navigation_rail_provider/navigation_rail_provider.dart';
import 'package:dentsu_interview/UIs/desktop/main_dashboard/tabs/dashboard.dart';
import 'package:dentsu_interview/UIs/desktop/main_dashboard/tabs/leads.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MainDashboardPage extends ConsumerWidget {
  const MainDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: DentsuColors.lightGreyLight,
      appBar: const AdminAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Card(
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListTile(
                        onTap: () {
                          ref
                              .read(navigationRailNotifierProvider.notifier)
                              .changeIndex(0);
                        },
                        selected:
                            ref.watch(navigationRailNotifierProvider) == 0,
                        leading: const Icon(Icons.home),
                        title: const Text('Dashboard'),
                      ),
                      ListTile(
                        onTap: () {
                          ref
                              .read(navigationRailNotifierProvider.notifier)
                              .changeIndex(1);
                        },
                        selected:
                            ref.watch(navigationRailNotifierProvider) == 1,
                        leading: const Icon(Icons.people),
                        title: const Text('Leads'),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 5,
              child: const [
                DesktopDashboard(),
                DesktopLeads()
              ][ref.watch(navigationRailNotifierProvider)],
            )
          ],
        ),
      ),
    );
  }
}
