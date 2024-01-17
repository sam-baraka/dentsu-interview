import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: LoginRoute.page,
            initial: Platform.isAndroid || Platform.isIOS ? true : false),
        AutoRoute(page: DashboardRoute.page, path: '/mobile_dashboard'),
        AutoRoute(page: LeadDetailRoute.page),
        AutoRoute(page: QuoteDetailRoute.page),
        AutoRoute(
            page: LoginDesktopRoute.page,
            initial: Platform.isAndroid || Platform.isIOS ? false : true),
        AutoRoute(page: MainDashboardRoute.page, path: '/main_dashboard'),
      ];
}
