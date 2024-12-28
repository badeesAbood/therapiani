import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar(
      {required this.title,
      super.key,
      this.actions,
      this.autoImplyLeading = false});

  final List<Widget>? actions;

  final String title;

  final bool autoImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: autoImplyLeading,
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
