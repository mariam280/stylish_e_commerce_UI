import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/routing/app_router.dart';
import 'package:stylish_e_commerce/core/themes/app_language.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class StylishECommerce extends StatelessWidget {
  const StylishECommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LanguageProvider>(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: provider.locale,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF3F3F3),
      ),
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

// locale: const Locale('ar'),
