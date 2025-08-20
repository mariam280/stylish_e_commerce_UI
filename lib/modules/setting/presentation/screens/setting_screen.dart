import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_background.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/setting_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomBackground(
        child: SettingScreenBody(),
      ),
    );
  }
}