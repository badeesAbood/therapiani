import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/services/assets.gen.dart';
import 'package:my_app/l10n/l10n.dart';

@RoutePage()
class TreatmentAddPage extends StatelessWidget {
  TreatmentAddPage({super.key}) {
    _nameController = TextEditingController();
  }

  late final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    String choice = _units.first;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.maybePop(), icon: Icon(Icons.close)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Assets.animations.treatAdd.lottie(height: 100),
            const SizedBox(
              height: 20,
            ),
            Text(
              context.l10n.medicationQuery,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), hintText: context.l10n.name),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.l10n.unit,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  value: choice,
                  items: _units.map<DropdownMenuItem<String>>(
                    (e) {
                      return DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    choice = value!;
                  },
                ))
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    shape: const RoundedRectangleBorder()),
                onPressed: () {},
                child: Text(context.l10n.next)),
            const SizedBox(
              height: 20,
            ),
            const LinearProgressIndicator(
              value: 0.2,
            )
          ],
        ),
      ),
    );
  }

  final List<String> _units = ['pill(s)', 'dose(s)'];
}
