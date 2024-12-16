import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/services/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(page: TodayRoute.page),
          AutoRoute(page: ProgressRoute.page, children: [
            AutoRoute(page: ProgressChartsRoute.page),
            AutoRoute(page: ProgressListRoute.page),
          ]),
          AutoRoute(page: SupportRoute.page),
          AutoRoute(page: TreatmentRoute.page),
        ]),
        CustomRoute(
          page: TreatmentProgressRoute.page,
          children: [
            CustomRoute(
              page: TreatmentAddRoute.page,
              customRouteBuilder: customBuilder,
            ),
            CustomRoute(
              customRouteBuilder: customBuilder,
              page: TreatmentIntervalRoute.page,
            ),
            CustomRoute(
              customRouteBuilder: customBuilder,
              page: TreatmentTimeMoreRoute.page,
            ),
            CustomRoute(
              customRouteBuilder: customBuilder,
              page: TreatmentTimeRoute.page,
            ),
            CustomRoute(

              customRouteBuilder: customBuilder,
              page: TreatmentInventoryRoute.page,
            ),
          ],
        ),
      ];
}

Route<T> customBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) =>
    PageRouteBuilder<T>(
      transitionDuration: const Duration(milliseconds: 900),
      fullscreenDialog: page.fullscreenDialog,
      settings: page,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget disposed,
      ) {
        final _oldPage = context.router.current.buildPage().child ;
        final _animation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return Stack(
          children: <Widget>[

            // slide out
            SlideTransition(
                position: Tween<Offset>(
                  begin: Offset.zero,
                  end: const Offset(-1, 0),
                ).animate(_animation),
                child: _oldPage),

            // slide in
            SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(_animation),
                child: child),
          ],
        );
      },
    );
