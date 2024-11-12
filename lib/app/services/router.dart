import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/app/services/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(page: TodayRoute.page),
          AutoRoute(page: ProgressRoute.page),
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
      transitionDuration: const Duration(milliseconds: 800),
      fullscreenDialog: page.fullscreenDialog,
      settings: page,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        final stackLength = context.router.current.router.stack.length;
        return Stack(
          children: <Widget>[
            SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(-1, 0),
              ).animate(animation),
              child: context.router.current.router
                  .stack[stackLength < 2 ? 0 : stackLength - 2].child,
            ),
            SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child)
          ],
        );
      },
    );
