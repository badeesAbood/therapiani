import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/app/services/assets.gen.dart';
import 'package:my_app/app/services/theme.dart';
import 'package:my_app/features/treatment/presentation/manager/progress_view_bloc/progress_view_bloc.dart';
import 'package:my_app/l10n/l10n.dart';

@RoutePage()
class TreatmentInventoryPage extends StatelessWidget {
  const TreatmentInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.animations.medsInventory.lottie(height: 100)),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.remindMe,
                  style: context.theme.textTheme.labelLarge,
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                )
              ],
            ),
            const Spacer(),
            FilledButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    shape: const RoundedRectangleBorder()),
                onPressed: () {
                  // context.pushRoute(const ());
                },
                child: Text(context.l10n.next))
          ],
        ),
      ),
    );
  }
}
