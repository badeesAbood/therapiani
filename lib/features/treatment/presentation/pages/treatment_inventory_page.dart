import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:therapiani/app/extensions/dialog_extension.dart';
import 'package:therapiani/app/services/assets.gen.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/l10n/l10n.dart';

part '../widgets/inventory_selector.dart';

part '../widgets/inventory_threshold.dart';

@RoutePage()
class TreatmentInventoryPage extends StatelessWidget {
  const TreatmentInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
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
              const SizedBox(
                height: 20,
              ),
              _InventoryRemindMeButton(
                label: context.l10n.remindMe,
                onChange: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              _InventoryThreshold(
                  onChanged: (value) {},
                  inventoryLabel: context.l10n.currentInventory,
                  inventoryName: context.l10n.amount,
                  inventoryValue: '30'),
              const SizedBox(
                height: 20,
              ),
              _InventoryThreshold(
                  onChanged: (value) {},
                  inventoryLabel: context.l10n.remindMeWhen,
                  inventoryName: context.l10n.threshold,
                  inventoryValue: '10'),
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
