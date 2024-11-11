import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/features/treatment/presentation/manager/progress_view_bloc/progress_view_bloc.dart';

class TreatmentRouterObserver extends AutoRouteObserver {
  TreatmentRouterObserver(this.bloc);

  final ProgressViewBloc bloc;

  @override
  void didPush(Route route, Route? previousRoute) {
    bloc.increment();
    super.didPush(route, previousRoute);
  }


  @override
  void didPop(Route route, Route? previousRoute) {
    bloc.decrement();
    super.didPop(route, previousRoute);
  }
}
