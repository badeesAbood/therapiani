


import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/services/theme.dart';
import 'package:my_app/l10n/l10n.dart';

part '../widgets/chart_item.dart';
@RoutePage()
class ProgressChartsPage extends StatelessWidget {
  const ProgressChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ChartItem(medName: "Diariah",)  ,
      ],
    ) ;
  }
}