part of '../pages/progress_charts_page.dart';

class ChartItem extends StatelessWidget {
  const ChartItem({required this.medName, super.key});

  final String medName;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(),
      color: context.theme.colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  medName,
                  style: context.theme.textTheme.labelLarge,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(context.l10n.last7days , style: context.theme.textTheme.labelSmall,),
                const Spacer(),
               InkWell(
                 onTap: () {

                 },
                 child: const Icon(Icons.more_vert),
               )
              ],
            ),
            SizedBox(height: 20,) ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  7,
                  (index) {
                    return _DayOfWeek(
                        label: index.toString(),
                        isCurrentDay: index == 4,
                        isTaken: index == 1,
                        isSkipped: index == 5);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DayOfWeek extends StatelessWidget {
  const _DayOfWeek(
      {required this.label,
      required this.isCurrentDay,
      required this.isTaken,
      required this.isSkipped});

  final String label;

  final bool isCurrentDay;

  final bool isTaken;

  final bool isSkipped;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: context.theme.textTheme.labelSmall,
        ),
        const SizedBox(
          height: 5,
        ),
        if (isTaken)
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.greenAccent, shape: BoxShape.circle),
            child: Icon(Icons.check),
          )
        else
          isSkipped
              ? Container(
                  width: 30,
                  height: 30,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: Icon(
                    Icons.close,
                    size: 15,
                  ),
                )
              : isCurrentDay
                  ? Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: context.theme.primaryColor),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.circle,
                        size: 10,
                      ),
                    )
                  : Container(
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.circle,
                        size: 10,
                      ),
                    ),
      ],
    );
  }
}
