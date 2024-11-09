import 'package:auto_route/auto_route.dart';
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
        ]) ,
    AutoRoute(page: TreatmentAddRoute.page) ,
      ];
}
