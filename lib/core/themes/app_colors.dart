import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/themes/app_them.dart';

abstract class AppColors {
  static const primaryColor = Color(0xffF83758);
  
  static Color secondaryColor(BuildContext context) {
    final modeProvider = Provider.of<ModeProvider>(context);
    return modeProvider.lightModeEnable ? Colors.black : Colors.white;
  }

  static Color widgetColor(BuildContext context) {
    final modeProvider = Provider.of<ModeProvider>(context);
    return modeProvider.lightModeEnable ? Colors.white : Colors.black;
  }
}
