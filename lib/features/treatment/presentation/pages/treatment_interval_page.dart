import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:therapiani/app/services/assets.gen.dart';
import 'package:therapiani/app/services/router.gr.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/l10n/l10n.dart';

part '../widgets/interval_select.dart';

@RoutePage()
class TreatmentIntervalPage extends StatelessWidget {
  const TreatmentIntervalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Padding(
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
              FilledButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    context.pushRoute(const TreatmentTimeMoreRoute());
                  },
                  child: Text(context.l10n.next))
            ],
          ),
        ),
    );
  }
}
