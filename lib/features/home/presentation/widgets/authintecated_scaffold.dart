import 'package:flutter/material.dart';
import 'package:my_app/features/home/presentation/widgets/home_app_bar.dart';

class AuthintecatedScaffold extends StatelessWidget {
  const AuthintecatedScaffold(
      {required this.body,
      required this.appBar,
      required this.bottomNavigationBar,
      super.key,
      this.actions});

  final List<Widget>? actions;
  final HomeAppBar appBar;

  final Widget body;
  final Widget bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appBar.title),
        actions: appBar.actions,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
