// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:my_app/features/home/presentation/pages/home.dart' as _i1;
import 'package:my_app/features/initial/welcome/presentation/pages/welcome_page.dart'
    as _i12;
import 'package:my_app/features/progress/presentation/pages/progress_page.dart'
    as _i2;
import 'package:my_app/features/support/presentation/pages/support_page.dart'
    as _i3;
import 'package:my_app/features/today/presentation/pages/today_page.dart'
    as _i4;
import 'package:my_app/features/treatment/presentation/pages/treatment_add_page.dart'
    as _i5;
import 'package:my_app/features/treatment/presentation/pages/treatment_interval_page.dart'
    as _i6;
import 'package:my_app/features/treatment/presentation/pages/treatment_inventory_page.dart'
    as _i7;
import 'package:my_app/features/treatment/presentation/pages/treatment_page.dart'
    as _i8;
import 'package:my_app/features/treatment/presentation/pages/treatment_progress_page.dart'
    as _i9;
import 'package:my_app/features/treatment/presentation/pages/treatment_time_more_page.dart'
    as _i10;
import 'package:my_app/features/treatment/presentation/pages/treatment_time_page.dart'
    as _i11;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i13.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
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

  final _i14.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProgressPage]
class ProgressRoute extends _i13.PageRouteInfo<void> {
  const ProgressRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ProgressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProgressRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProgressPage();
    },
  );
}

/// generated route for
/// [_i3.SupportPage]
class SupportRoute extends _i13.PageRouteInfo<void> {
  const SupportRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.SupportPage();
    },
  );
}

/// generated route for
/// [_i4.TodayPage]
class TodayRoute extends _i13.PageRouteInfo<void> {
  const TodayRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TodayRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.TodayPage();
    },
  );
}

/// generated route for
/// [_i5.TreatmentAddPage]
class TreatmentAddRoute extends _i13.PageRouteInfo<TreatmentAddRouteArgs> {
  TreatmentAddRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          TreatmentAddRoute.name,
          args: TreatmentAddRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TreatmentAddRoute';

  static _i13.PageInfo page = _i13.PageInfo(
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

  final _i14.Key? key;

  @override
  String toString() {
    return 'TreatmentAddRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.TreatmentIntervalPage]
class TreatmentIntervalRoute extends _i13.PageRouteInfo<void> {
  const TreatmentIntervalRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TreatmentIntervalRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentIntervalRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.TreatmentIntervalPage();
    },
  );
}

/// generated route for
/// [_i7.TreatmentInventoryPage]
class TreatmentInventoryRoute extends _i13.PageRouteInfo<void> {
  const TreatmentInventoryRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TreatmentInventoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentInventoryRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i7.TreatmentInventoryPage();
    },
  );
}

/// generated route for
/// [_i8.TreatmentPage]
class TreatmentRoute extends _i13.PageRouteInfo<void> {
  const TreatmentRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TreatmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i8.TreatmentPage();
    },
  );
}

/// generated route for
/// [_i9.TreatmentProgressPage]
class TreatmentProgressRoute extends _i13.PageRouteInfo<void> {
  const TreatmentProgressRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TreatmentProgressRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentProgressRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.TreatmentProgressPage();
    },
  );
}

/// generated route for
/// [_i10.TreatmentTimeMorePage]
class TreatmentTimeMoreRoute extends _i13.PageRouteInfo<void> {
  const TreatmentTimeMoreRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TreatmentTimeMoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentTimeMoreRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.TreatmentTimeMorePage();
    },
  );
}

/// generated route for
/// [_i11.TreatmentTimePage]
class TreatmentTimeRoute extends _i13.PageRouteInfo<void> {
  const TreatmentTimeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TreatmentTimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TreatmentTimeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.TreatmentTimePage();
    },
  );
}

/// generated route for
/// [_i12.WelcomePage]
class WelcomeRoute extends _i13.PageRouteInfo<void> {
  const WelcomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i12.WelcomePage();
    },
  );
}
