part of '../pages/treatment_time_page.dart';

class IntakeSelector extends StatefulWidget {
  const IntakeSelector(
      {required this.onDoseChange,
      required this.onTimeChange,
      required this.doseValue,
      this.intakeLabel,
      super.key});

  final String? intakeLabel;
  final String doseValue;

  final void Function(TimeOfDay value) onTimeChange;

  final VoidCallback onDoseChange;

  @override
  State<IntakeSelector> createState() => _IntakeSelectorState();
}

class _IntakeSelectorState extends State<IntakeSelector> {
  TimeOfDay _timeValue = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            widget.intakeLabel ?? '',
            style: context.theme.textTheme.labelSmall,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.time,
                style: context.theme.textTheme.labelLarge,
              ),
              TextButton.icon(
                  onPressed: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    ).then(
                      (value) {
                        widget.onTimeChange(value!);
                        setState(() {
                          _timeValue = value;
                        });
                      },
                    );
                  },
                  label: Row(
                    children: [
                      Text(_timeValue.format(context)),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.dose,
                style: context.theme.textTheme.labelLarge,
              ),
              TextButton.icon(
                  onPressed: () {
                    widget.onDoseChange();
                  },
                  label: Row(
                    children: [
                      Text(widget.doseValue),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
