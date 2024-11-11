import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/app/services/assets.gen.dart';
import 'package:my_app/app/services/router.gr.dart';
import 'package:my_app/app/services/theme.dart';
import 'package:my_app/features/treatment/presentation/manager/progress_view_bloc/progress_view_bloc.dart';
import 'package:my_app/l10n/l10n.dart';

part '../widgets/intake_selector.dart';

@RoutePage()
class TreatmentTimePage extends StatelessWidget {
  const TreatmentTimePage({super.key});

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
              'Treatment name',
              style: context.theme.textTheme.labelMedium,
            ),
            Text(
              context.l10n.treatmentIntervalQuery,
              style: context.theme.textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            IntakeSelector(
              doseValue: '1 Pill ',
              onDoseChange: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: const RoundedRectangleBorder(),
                      insetPadding: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              context.l10n.dose,
                              style: context.theme.textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      context.maybePop();
                                    },
                                    child: Text(context.l10n.cancel)),
                                TextButton(
                                    onPressed: () {
                                      context.maybePop();
                                    },
                                    child: Text(context.l10n.ok)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              onTimeChange: (value) {},
            ),
            const Spacer(),
            BlocBuilder<ProgressViewBloc, double>(
              buildWhen: (previous, current) => current != previous,
              builder: (context, state) {
                return FilledButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 40),
                        shape: const RoundedRectangleBorder()),
                    onPressed: () {
                      context.pushRoute(const TreatmentInventoryRoute());
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
