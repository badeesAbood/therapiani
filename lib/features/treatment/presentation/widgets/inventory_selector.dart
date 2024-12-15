part of '../pages/treatment_inventory_page.dart';

class _InventoryRemindMeButton extends StatefulWidget {
  const _InventoryRemindMeButton(
      {required this.onChange, required this.label, super.key});

  final void Function() onChange;
  final String label;

  @override
  State<_InventoryRemindMeButton> createState() => _InventoryRemindMeButtonState();
}

class _InventoryRemindMeButtonState extends State<_InventoryRemindMeButton> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: context.theme.textTheme.labelLarge,
        ),
        Switch(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
            widget.onChange();
          },
        ),
      ],
    );
  }
}
