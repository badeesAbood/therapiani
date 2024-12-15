part of '../pages/treatment_inventory_page.dart';


class _InventoryThreshold extends StatelessWidget {
  const _InventoryThreshold(
      {super.key, required this.onChanged, required this.inventoryLabel, required this.inventoryName, required this.inventoryValue});

  final void Function(String value) onChanged;

  final String inventoryLabel;

  final String inventoryName;

  final String inventoryValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(inventoryLabel, style: context.theme.textTheme.labelMedium,),
        const SizedBox(height: 5,),
        InkWell(
          onTap: () =>
              context.showInputDialog(
                onValueChanged: onChanged, title: inventoryName,
              ),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: context.theme.colorScheme.surfaceContainerHighest,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    inventoryName, style: context.theme.textTheme.bodyMedium,),
                  Text(inventoryValue,
                    style: context.theme.textTheme.bodyMedium!.copyWith(
                        color: context.theme.primaryColor),)
                ],
              ),
            ),
          ),
        )
      ],
    ) ;
  }
}
