part of '../pages/treatment_time_more_page.dart';

class SpecificIntervalSelect extends StatelessWidget {
  const SpecificIntervalSelect({
    required this.value,
    required this.onTap,
    required this.label,
    super.key,
  });

  final bool value;
  final String label;

  final void Function({required bool value}) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: context.theme.textTheme.labelLarge,
            ),
            Switch(
              value: value,
              onChanged: (value) {
                onTap(value: value);
              },
            )
          ],
        ),
      ),
    );
  }
}
