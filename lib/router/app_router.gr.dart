// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:dentsu_interview/UIs/authentication/login_page.dart' as _i4;
import 'package:dentsu_interview/UIs/desktop/login_desktop_page.dart' as _i3;
import 'package:dentsu_interview/UIs/desktop/main_dashboard/main_dashboard.dart'
    as _i5;
import 'package:dentsu_interview/UIs/main_home/dashboard_page.dart' as _i1;
import 'package:dentsu_interview/UIs/main_home/leads/lead_detail_page.dart'
    as _i2;
import 'package:dentsu_interview/UIs/main_home/quotes/quote_detail_page.dart'
    as _i6;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashboardPage(),
      );
    },
    LeadDetailRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LeadDetailRoute(),
      );
    },
    LoginDesktopRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginDesktopPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(key: args.key),
      );
    },
    MainDashboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainDashboardPage(),
      );
    },
    QuoteDetailRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.QuoteDetailPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LeadDetailRoute]
class LeadDetailRoute extends _i7.PageRouteInfo<void> {
  const LeadDetailRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LeadDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeadDetailRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginDesktopPage]
class LoginDesktopRoute extends _i7.PageRouteInfo<void> {
  const LoginDesktopRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginDesktopRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginDesktopRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<LoginRouteArgs> page =
      _i7.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.MainDashboardPage]
class MainDashboardRoute extends _i7.PageRouteInfo<void> {
  const MainDashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainDashboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.QuoteDetailPage]
class QuoteDetailRoute extends _i7.PageRouteInfo<void> {
  const QuoteDetailRoute({List<_i7.PageRouteInfo>? children})
      : super(
          QuoteDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuoteDetailRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
