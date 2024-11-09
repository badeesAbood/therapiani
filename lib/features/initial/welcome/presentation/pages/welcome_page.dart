import 'dart:async';
import 'dart:math' as math;

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app/app/services/assets.gen.dart';
import 'package:my_app/l10n/l10n.dart';

part '../widgets/animated_content.dart';

@RoutePage()
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static int index = 0;

  late final Timer timer;

  @override
  void initState() {
    initTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(onPressed: () {}, child: Text(context.l10n.login))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                child: _welcomingList[index],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const BeveledRectangleBorder(),
                  minimumSize: const Size(double.infinity, 40),
                ),
                child: const Text('Proceed'),
              )
            ],
          ),
        ));
  }

  void initTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) async {
      if (mounted) {
        setState(() {
          if (index+1  == _welcomingList.length) {
            index = 0;
          } else {
            index++;
          }
        });
      }
    });
  }
}

List<_AnimatedContent> _welcomingList = [
  _AnimatedContent(
    key: const ValueKey<int>(0),
    title: 'Notifications ',
    description: 'Get notified About your treatment',
    image: Assets.animations.notifications.lottie(height: 180),
  ),
  _AnimatedContent(
    key: const ValueKey<int>(1),
    title: 'Tracking',
    description: 'Track Your progress and More',
    image: Assets.animations.charts.lottie(height: 180),
  ),
];
