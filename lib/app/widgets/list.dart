import 'package:flutter/material.dart';

typedef ItemBuilder = Widget? Function(BuildContext);

class AppList extends StatelessWidget {
  const AppList(
      {required this.builder, super.key, this.emptyHolder, this.errorWidget});

  final Widget? emptyHolder;

  final Widget? errorWidget;

  final ItemBuilder builder;

  @override
  Widget build(BuildContext context) {
    return emptyHolder! ;
  }
}
