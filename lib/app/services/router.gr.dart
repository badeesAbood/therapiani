// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:my_app/features/home/presentation/pages/home.dart' as _i1;
import 'package:my_app/features/initial/welcome/presentation/pages/welcome_page.dart'
    as _i7;
import 'package:my_app/features/progress/presentation/pages/progress_page.dart'
    as _i2;
import 'package:my_app/features/support/presentation/pages/support_page.dart'
    as _i3;
import 'package:my_app/features/today/presentation/pages/today_page.dart'
    as _i4;
import 'package:my_app/features/treatment/presentation/pages/treatment_add_page.dart'
    as _i5;
import 'package:my_app/features/treatment/presentation/pages/treatment_page.dart'
    as _i6;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
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

  final _i9.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProgressPage]
class ProgressRoute extends _i8.PageRouteInfo<void> {
  const ProgressRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProgressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgressRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProgressPage();
    },
  );
}

/// generated route for
/// [_i3.SupportPage]
class SupportRoute extends _i8.PageRouteInfo<void> {
  const SupportRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.SupportPage();
    },
  );
}

/// generated route for
/// [_i4.TodayPage]
class TodayRoute extends _i8.PageRouteInfo<void> {
  const TodayRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TodayRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.TodayPage();
    },
  );
}

/// generated route for
/// [_i5.TreatmentAddPage]
class TreatmentAddRoute extends _i8.PageRouteInfo<TreatmentAddRouteArgs> {
  TreatmentAddRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          TreatmentAddRoute.name,
          args: TreatmentAddRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TreatmentAddRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TreatmentAddRouteArgs>(
          orElse: () => const TreatmentAddRouteArgs());
      return _i5.TreatmentAddPage(key: args.key);
    },
  );
}

class TreatmentAddRouteArgs {
  const TreatmentAddRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'TreatmentAddRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.TreatmentPage]
class TreatmentRoute extends _i8.PageRouteInfo<void> {
  const TreatmentRoute({List<_i8.PageRouteInfo>? children})
      : super(
          TreatmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.TreatmentPage();
    },
  );
}

/// generated route for
/// [_i7.WelcomePage]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.WelcomePage();
    },
  );
}
