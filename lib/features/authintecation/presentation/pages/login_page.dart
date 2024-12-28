import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:therapiani/app/entry.dart';
import 'package:therapiani/app/services/assets.gen.dart';
import 'package:therapiani/app/services/router.gr.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/features/home/presentation/widgets/authintecated_scaffold.dart';
import 'package:therapiani/features/home/presentation/widgets/home_app_bar.dart';
import 'package:therapiani/l10n/l10n.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SizedBox.shrink(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.login,
          style: context.theme.textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Assets.vectors.loginHead.svg(height: 200, width: 200),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: context.l10n.email,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: context.l10n.password,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  minimumSize: const Size(double.infinity, 40)),
              onPressed: () {
                context.pushRoute(HomeRoute());
              },
              child: Text(context.l10n.login),
            ),
          ],
        ),
      ),
    );
  }
}
