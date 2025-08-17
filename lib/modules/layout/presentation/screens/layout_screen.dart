import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stylish_e_commerce/core/helper/show_snack_bar.dart';
import 'package:stylish_e_commerce/modules/layout/presentation/widgets/layout_screen_body.dart';

class Layoutscreen extends StatelessWidget {
  const Layoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime? lastPressed;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        final now = DateTime.now();
        final maxDuration = Duration(seconds: 2);

        if (lastPressed == null || now.difference(lastPressed!) > maxDuration) {
          lastPressed = now;
          showSnackBar(context, 'Press back again to exit');
          result = false;
        } else {
          result = true;
          SystemNavigator.pop();
        }
      },
      child: const Scaffold(
        body: LayoutScreenBody(),
      ),
    );
  }
}