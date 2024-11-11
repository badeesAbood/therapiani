import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/treatment/presentation/manager/progress_view_bloc/progress_view_bloc.dart';
import 'package:my_app/features/treatment/presentation/pages/treatment_router_observer/treatment_router_observer.dart';

@RoutePage()
class TreatmentProgressPage extends StatelessWidget {
  const TreatmentProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = ProgressViewBloc(0);
    return Material(
      child: BlocProvider(
        create: (context) => bloc,
        child: BlocBuilder<ProgressViewBloc, double>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            context.read<ProgressViewBloc>().setSack = 4;
            return Column(
              children: [
                Expanded(child: AutoRouter(
                  navigatorObservers: () {
                    return [TreatmentRouterObserver(bloc)];
                  },
                )),
                LinearProgressIndicator(
                  value: state,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
