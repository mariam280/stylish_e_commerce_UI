import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/routing/app_router.dart';

class StylishECommerce extends StatelessWidget {
  const StylishECommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF3F3F3),
      ),
      routerConfig: AppRouter.goRouter,
    );
  }
}
