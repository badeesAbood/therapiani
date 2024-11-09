import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/app/services/router.gr.dart';
import 'package:my_app/features/home/presentation/widgets/authintecated_scaffold.dart';
import 'package:my_app/features/home/presentation/widgets/home_app_bar.dart';
import 'package:my_app/l10n/l10n.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<HomeAppBarModel> _bars = [
      HomeAppBarModel(
        title: context.l10n.todo,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      HomeAppBarModel(
        title: context.l10n.progress,
        actions: [
          TextButton(onPressed: () {}, child: Text(context.l10n.export))
        ],
      ),
      HomeAppBarModel(
        title: context.l10n.support,
      ),
      HomeAppBarModel(
        title: context.l10n.treatment,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_outline))
        ],
      ),
    ];

    return AutoTabsRouter.tabBar(
        routes: const [
          TodayRoute(),
          ProgressRoute(),
          SupportRoute(),
          TreatmentRoute()
        ],
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);
          return AuthintecatedScaffold(
            appBar: HomeAppBar(
              title: _bars[tabsRouter.activeIndex].title,
              actions: _bars[tabsRouter.activeIndex].actions,
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              elevation: 20,
              iconSize: 20,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.today_outlined),
                  label: context.l10n.todo,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.bar_chart),
                  label: context.l10n.progress,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.medical_services_outlined),
                  label: context.l10n.support,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(FontAwesomeIcons.pills),
                  label: context.l10n.treatment,
                ),
              ],
            ),
            body: child,
          );
        });
  }
}
