import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/routing/app_router.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/logic/app_language.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/logic/app_them.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class StylishECommerce extends StatelessWidget {
  const StylishECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
   final modeProvider = Provider.of<ModeProvider>(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeAnimationCurve: Curves.fastEaseInToSlowEaseOut,
      themeAnimationDuration: const Duration(milliseconds: 1500),
      locale: langProvider.locale,
      builder: DevicePreview.appBuilder,
      theme: modeProvider.themeData,
      routerConfig: AppRouter.goRouter,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}


