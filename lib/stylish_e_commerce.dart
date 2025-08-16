import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/routing/app_router.dart';

class StylishECommerce extends StatelessWidget {
  const StylishECommerce({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routerConfig: AppRouter.goRouter,
    );
  }
}
