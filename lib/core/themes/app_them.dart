import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/cache/get_storage_helper.dart';

class ModeProvider with ChangeNotifier {
  bool lightModeEnable = true; // default mode is light
  // bool get lightModeEnable => _lightModeEnable;
//  set lightModeEnable(bool value) {
//     _lightModeEnable = value;
//   }

  void toggleMode() async{
    //lightModeEnable ? lightModeEnable = false : lightModeEnable = true;
    lightModeEnable = !lightModeEnable;
    //await SharedPrefsHelper.setData(key: 'lightMode', value: lightModeEnable);
    await GetStorageHelper.setGetStorageData(key: 'lightMode', value: lightModeEnable);
    notifyListeners();
  }
  
  void getMode() async {
    lightModeEnable = await GetStorageHelper.getGetStorageData(key: 'lightMode') ?? true;
    notifyListeners();
  }
  ThemeData get themeData {
    return lightModeEnable ? ThemeData.light() : ThemeData.dark();
  }


}