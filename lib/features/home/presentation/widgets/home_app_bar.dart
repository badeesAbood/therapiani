import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({required this.title, super.key, this.actions});

  final List<Widget>? actions;

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title),
      actions: actions,
    );
  }
}

class HomeAppBarModel {

  const HomeAppBarModel({required this.title, this.actions});
  final List<Widget>? actions;

  final String title;
}
