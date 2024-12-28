import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:therapiani/app/services/router.gr.dart';
import 'package:therapiani/l10n/l10n.dart';

@RoutePage()
class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ProgressChartsRoute(),
        ProgressListRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            label: Text(context.l10n.oneTimeEntry),
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          appBar: TabBar(
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: tabController,
              tabs: [
                Tab(
                  child: Text(context.l10n.charts),
                ),
                Tab(
                  child: Text(context.l10n.list),
                )
              ]),
          body: child,
        );
      },
    );
  }
}
