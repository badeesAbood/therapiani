

import 'package:flutter/material.dart';
import 'package:therapiani/app/services/router.dart';
import 'package:therapiani/app/services/theme.dart';
import 'package:therapiani/l10n/l10n.dart';

class Entry extends StatelessWidget {
   Entry({super.key});


  final _appRouter =  AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.dark,
     routerConfig: _appRouter.config(),
    ) ;
  }
}
