// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:my_app/features/home/presentation/pages/home.dart' as _i1;
import 'package:my_app/features/initial/welcome/presentation/pages/welcome_page.dart'
    as _i3;
import 'package:my_app/features/today/presentation/pages/today_page.dart'
    as _i2;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i1.HomePage(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.TodayPage]
class TodayRoute extends _i4.PageRouteInfo<void> {
  const TodayRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TodayRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.TodayPage();
    },
  );
}

/// generated route for
/// [_i3.WelcomePage]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.WelcomePage();
    },
  );
}
