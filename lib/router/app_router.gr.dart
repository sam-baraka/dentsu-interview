// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:dentsu_interview/authentication/login_page.dart' as _i3;
import 'package:dentsu_interview/main_home/dashboard_page.dart' as _i1;
import 'package:dentsu_interview/main_home/leads/lead_detail_page.dart' as _i2;
import 'package:dentsu_interview/main_home/quotes/quote_detail_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    LeadDetailRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LeadDetailRoute(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    QuoteDetailRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.QuoteDetailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LeadDetailRoute]
class LeadDetailRoute extends _i5.PageRouteInfo<void> {
  const LeadDetailRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LeadDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeadDetailRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QuoteDetailPage]
class QuoteDetailRoute extends _i5.PageRouteInfo<void> {
  const QuoteDetailRoute({List<_i5.PageRouteInfo>? children})
      : super(
          QuoteDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuoteDetailRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
