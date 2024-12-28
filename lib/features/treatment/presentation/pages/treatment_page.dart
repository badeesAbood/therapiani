import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:therapiani/app/services/router.gr.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/l10n/l10n.dart';

part '../widgets/treatment_card.dart';

@RoutePage()
class TreatmentPage extends StatelessWidget {
  const TreatmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => _TreatmentCard(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
            child: FloatingActionButton.extended(
              onPressed: () {
                context.pushRoute( TreatmentAddRoute());
              },
              icon: const Icon(Icons.add),
              label: Text(context.l10n.add),
            ),
          ),
        )
      ],
    );
  }
}
