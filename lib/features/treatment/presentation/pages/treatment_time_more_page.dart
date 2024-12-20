import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:therapiani/app/services/assets.gen.dart';
import 'package:therapiani/app/services/router.gr.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/l10n/l10n.dart';

part '../widgets/specific_interval_select.dart';

@RoutePage()
class TreatmentTimeMorePage extends StatelessWidget {
  const TreatmentTimeMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Padding(
          padding: const EdgeInsets.all(8),
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
              SpecificIntervalSelect(
                label: 'Interval',
                onTap: ({required value}) {},
                value: false,
              ),
              SpecificIntervalSelect(
                label: 'Multiple Times a day',
                value: true,
                onTap: ({required value}) {},
              ),
              SpecificIntervalSelect(
                label: 'Specific days of the week',
                onTap: ({required value}) {},
                value: false,
              ),
              const Spacer(),
              FilledButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    context.pushRoute(const TreatmentTimeRoute());
                  },
                  child: Text(context.l10n.next)),
            ],
          ),
        ),
    );
  }
}
