import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: DashboardRoute.page),
      ];
}
