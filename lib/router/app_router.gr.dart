// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:dentsu_interview/models/dentsuquote.dart' as _i10;
import 'package:dentsu_interview/UIs/authentication/login_page.dart' as _i5;
import 'package:dentsu_interview/UIs/desktop/login_desktop_page.dart' as _i4;
import 'package:dentsu_interview/UIs/desktop/main_dashboard/main_dashboard.dart'
    as _i6;
import 'package:dentsu_interview/UIs/main_home/dashboard_page.dart' as _i2;
import 'package:dentsu_interview/UIs/main_home/leads/add_quote_page.dart'
    as _i1;
import 'package:dentsu_interview/UIs/main_home/leads/lead_detail_page.dart'
    as _i3;
import 'package:dentsu_interview/UIs/main_home/quotes/quote_detail_page.dart'
    as _i7;
import 'package:flutter/cupertino.dart' as _i11;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AddQuoteRoute.name: (routeData) {
      final args = routeData.argsAs<AddQuoteRouteArgs>(
          orElse: () => const AddQuoteRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddQuotePage(key: args.key),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    LeadDetailRoute.name: (routeData) {
      final args = routeData.argsAs<LeadDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LeadDetailPage(
          args.index,
          args.quotes,
          key: args.key,
          quote: args.quote,
        ),
      );
    },
    LoginDesktopRoute.name: (routeData) {
      final args = routeData.argsAs<LoginDesktopRouteArgs>(
          orElse: () => const LoginDesktopRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginDesktopPage(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LoginPage(key: args.key),
      );
    },
    MainDashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainDashboardPage(),
      );
    },
    QuoteDetailRoute.name: (routeData) {
      final args = routeData.argsAs<QuoteDetailRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.QuoteDetailPage(
          key: args.key,
          quote: args.quote,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddQuotePage]
class AddQuoteRoute extends _i8.PageRouteInfo<AddQuoteRouteArgs> {
  AddQuoteRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AddQuoteRoute.name,
          args: AddQuoteRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AddQuoteRoute';

  static const _i8.PageInfo<AddQuoteRouteArgs> page =
      _i8.PageInfo<AddQuoteRouteArgs>(name);
}

class AddQuoteRouteArgs {
  const AddQuoteRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AddQuoteRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LeadDetailPage]
class LeadDetailRoute extends _i8.PageRouteInfo<LeadDetailRouteArgs> {
  LeadDetailRoute({
    required int index,
    required List<_i10.DentsuQuote> quotes,
    _i11.Key? key,
    required _i10.DentsuQuote quote,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LeadDetailRoute.name,
          args: LeadDetailRouteArgs(
            index: index,
            quotes: quotes,
            key: key,
            quote: quote,
          ),
          initialChildren: children,
        );

  static const String name = 'LeadDetailRoute';

  static const _i8.PageInfo<LeadDetailRouteArgs> page =
      _i8.PageInfo<LeadDetailRouteArgs>(name);
}

class LeadDetailRouteArgs {
  const LeadDetailRouteArgs({
    required this.index,
    required this.quotes,
    this.key,
    required this.quote,
  });

  final int index;

  final List<_i10.DentsuQuote> quotes;

  final _i11.Key? key;

  final _i10.DentsuQuote quote;

  @override
  String toString() {
    return 'LeadDetailRouteArgs{index: $index, quotes: $quotes, key: $key, quote: $quote}';
  }
}

/// generated route for
/// [_i4.LoginDesktopPage]
class LoginDesktopRoute extends _i8.PageRouteInfo<LoginDesktopRouteArgs> {
  LoginDesktopRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoginDesktopRoute.name,
          args: LoginDesktopRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginDesktopRoute';

  static const _i8.PageInfo<LoginDesktopRouteArgs> page =
      _i8.PageInfo<LoginDesktopRouteArgs>(name);
}

class LoginDesktopRouteArgs {
  const LoginDesktopRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginDesktopRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<LoginRouteArgs> page =
      _i8.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.MainDashboardPage]
class MainDashboardRoute extends _i8.PageRouteInfo<void> {
  const MainDashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainDashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainDashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.QuoteDetailPage]
class QuoteDetailRoute extends _i8.PageRouteInfo<QuoteDetailRouteArgs> {
  QuoteDetailRoute({
    _i9.Key? key,
    required _i10.DentsuQuote quote,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          QuoteDetailRoute.name,
          args: QuoteDetailRouteArgs(
            key: key,
            quote: quote,
          ),
          initialChildren: children,
        );

  static const String name = 'QuoteDetailRoute';

  static const _i8.PageInfo<QuoteDetailRouteArgs> page =
      _i8.PageInfo<QuoteDetailRouteArgs>(name);
}

class QuoteDetailRouteArgs {
  const QuoteDetailRouteArgs({
    this.key,
    required this.quote,
  });

  final _i9.Key? key;

  final _i10.DentsuQuote quote;

  @override
  String toString() {
    return 'QuoteDetailRouteArgs{key: $key, quote: $quote}';
  }
}
