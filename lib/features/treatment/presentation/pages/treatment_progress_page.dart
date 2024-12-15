import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/treatment/presentation/manager/progress_view_bloc/progress_view_bloc.dart';
import 'package:my_app/features/treatment/presentation/pages/treatment_router_observer/treatment_router_observer.dart';

@RoutePage()
class TreatmentProgressPage extends StatefulWidget {
  const TreatmentProgressPage({super.key});

  @override
  State<TreatmentProgressPage> createState() => _TreatmentProgressPageState();
}

class _TreatmentProgressPageState extends State<TreatmentProgressPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final bloc = ProgressViewBloc(0)..setSack = 4;
    return BlocProvider(
      create: (context) => bloc,
      child: BlocBuilder<ProgressViewBloc, double>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: bloc.index > 1
                ? AppBar(
                    leading: IconButton(
                        onPressed: () {
                          context.router.back();
                        },
                        icon: const Icon(Icons.arrow_back)),
                  )
                : AppBar(
                    leading: IconButton(
                    onPressed: () => context.maybePop(),
                    icon: const Icon(Icons.close),
                  )),
            body: Column(
              children: [
                Expanded(
                  child: AutoRouter(
                    navigatorObservers: () {
                      return [TreatmentRouterObserver(bloc)];
                    },
                  ),
                ),
                LinearProgressIndicator(
                  value: state,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
