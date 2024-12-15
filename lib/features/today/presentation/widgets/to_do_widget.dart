part of '../pages/today_page.dart';

class _ToDoWidget extends StatelessWidget {
  const _ToDoWidget({super.key});

  // TODO : assign a Reminder or Medecin model to this widget

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            Expanded(
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.close_rounded),
                        Text(
                          context.l10n.skip,
                          style: context.theme.textTheme.labelSmall,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
          startActionPane: ActionPane(motion: const ScrollMotion(), children: [
            Expanded(
              child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.check_circle),
                          Text(
                            context.l10n.confirm,
                            style: context.theme.textTheme.labelSmall,
                          )
                        ],
                      ),
                    ),
                  )),
            ),
          ]),
          key: const Key('key'),
          child: Card(
            shape: RoundedRectangleBorder(),
            margin: EdgeInsets.zero,
            color: context.theme.colorScheme.surfaceContainerHighest,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '10:10 pm ',
                        style: context.theme.textTheme.labelSmall!.copyWith(
                          color: context.theme.primaryColor,
                        ),
                      ),
                      Icon(
                        Icons.notifications_active,
                        color: context.theme.primaryColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: context.theme.primaryColor)),
                        child: Icon(FontAwesomeIcons.pills,
                            color: context.theme.primaryColor),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Medecine name',
                            style: context.theme.textTheme.labelMedium,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '1 pill(s)',
                            style: context.theme.textTheme.labelSmall,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
