import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/cache/get_storage_helper.dart';
import 'package:stylish_e_commerce/core/themes/app_language.dart';
import 'package:stylish_e_commerce/core/themes/app_them.dart'; 
import 'package:stylish_e_commerce/stylish_e_commerce.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorageHelper.initGetStorage();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
          ChangeNotifierProvider(create: (_) => ModeProvider()),
        ],
        child: const StylishECommerce(),
      ),
    ),
  );
}
