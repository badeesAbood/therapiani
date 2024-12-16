part of '../pages/treatment_page.dart';

class _TreatmentCard extends StatelessWidget {
  const _TreatmentCard({super.key});

  // Todo: Treatemnt model to be added here

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: context.theme.colorScheme.surfaceContainerHighest,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(FontAwesomeIcons.pills),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Name',
                    style: context.theme.textTheme.labelMedium,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Daily-8:00 am',
                style: context.theme.textTheme.labelSmall!
                    .copyWith(color: context.theme.disabledColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle,
                        color: context.theme.disabledColor),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      '20 pill(s)',
                      style: context.theme.textTheme.labelSmall,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child:
                        Icon(Icons.alarm, color: context.theme.disabledColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
