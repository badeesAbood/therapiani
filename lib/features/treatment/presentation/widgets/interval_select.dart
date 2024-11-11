part of '../pages/treatment_interval_page.dart';

class IntervalSelect extends StatelessWidget {
  const IntervalSelect(
      {required this.value,
      required this.selectedOption,
      required this.onTap,
      super.key});

  final String value;

  final String selectedOption;

  final void Function(String value) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          onTap(value);
        },
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: context.theme.textTheme.labelLarge,
              ),
              Radio<String>(
                value: value,
                groupValue: selectedOption,
                onChanged: (value) {
                  // onChanged(value!);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
