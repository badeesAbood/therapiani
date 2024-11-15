

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/app/services/theme.dart';
import 'package:my_app/l10n/l10n.dart';

part '../widgets/to_do_widget.dart';
@RoutePage()
class TodayPage extends StatelessWidget {
  const TodayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
      return const _ToDoWidget() ;
    },) ;
  }
}
