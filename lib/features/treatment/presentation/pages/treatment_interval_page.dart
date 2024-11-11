import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/app/services/assets.gen.dart';
import 'package:my_app/app/services/router.gr.dart';
import 'package:my_app/app/services/theme.dart';
import 'package:my_app/features/treatment/presentation/manager/progress_view_bloc/progress_view_bloc.dart';
import 'package:my_app/l10n/l10n.dart';

part '../widgets/interval_select.dart';

@RoutePage()
class TreatmentIntervalPage extends StatelessWidget {
  const TreatmentIntervalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.animations.treatAdd.lottie(height: 100)),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Treat name',
              style: context.theme.textTheme.labelMedium,
            ),
            Text(
              context.l10n.treatmentIntervalQuery,
              style: context.theme.textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            IntervalSelect(
              value: 'Once Daily',
              selectedOption: 'Once Daily',
              onTap: (value) {},
            ),
            IntervalSelect(
              value: 'Twice Daily',
              selectedOption: 'Once Daily',
              onTap: (value) {},
            ),
            IntervalSelect(
              value: 'On demand',
              selectedOption: 'Once Daily',
              onTap: (value) {},
            ),
            IntervalSelect(
              value: 'I nedd more options',
              selectedOption: 'Once Daily',
              onTap: (value) {},
            ),
            const Spacer(),
            BlocBuilder<ProgressViewBloc, double>(
              builder: (context, state) {
                return FilledButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder()),
                    onPressed: () {
                      context.pushRoute(const TreatmentTimeRoute());
                    },
                    child: Text(context.l10n.next));
              },
            ),
          ],
        ),
      ),
    );
  }
}
