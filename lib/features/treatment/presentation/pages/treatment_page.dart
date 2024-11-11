import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/services/assets.gen.dart';
import 'package:my_app/app/services/router.gr.dart';
import 'package:my_app/app/widgets/list.dart';
import 'package:my_app/l10n/l10n.dart';

@RoutePage()
class TreatmentPage extends StatelessWidget {
  const TreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppList(
      builder: (context) {},
      emptyHolder: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
             Assets.vectors.treatmentCalendar.svg(height: 300) ,
              Text(
                context.l10n.getStarted,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                context.l10n.treatmentAddExplanation,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              FilledButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40),
                      shape: const RoundedRectangleBorder()),
                  onPressed: () {
                    context.pushRoute(TreatmentAddRoute());
                  },
                  child: Text(context.l10n.addReminder))
            ],
          ),
        ),
      ),
    );
  }
}
