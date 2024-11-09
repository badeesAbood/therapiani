import 'package:flutter/material.dart';

class AuthintecatedScaffold extends StatelessWidget {
  const AuthintecatedScaffold(
      {
      required this.body,
        required this.appBar ,
      required this.bottomNavigationBar, super.key,
      this.actions});


  final List<Widget>? actions;
  final AppBar appBar ;
  final Widget body;
  final Widget bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
