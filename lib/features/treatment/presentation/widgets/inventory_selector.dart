part of '../pages/treatment_inventory_page.dart';

class InventorySelector extends StatefulWidget {
  const InventorySelector(
      {required this.onChange, required this.label, super.key});

  final void Function() onChange;
  final String label;

  @override
  State<InventorySelector> createState() => _InventorySelectorState();
}

class _InventorySelectorState extends State<InventorySelector> {
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
