import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/cache/get_storage_helper.dart';

class ModeProvider with ChangeNotifier {
  bool lightModeEnable = true;

  ModeProvider() {
    loadSavedMode();
  }

  Future<void> loadSavedMode() async {
    bool? savedMode = GetStorageHelper.getGetStorageData(key: 'lightMode');
    if (savedMode != null) {
      lightModeEnable = savedMode;
     // print(lightModeEnable);
      notifyListeners();
    }
  }

  void toggleMode() async {
    lightModeEnable = !lightModeEnable;
    await GetStorageHelper.setGetStorageData(
      key: 'lightMode',
      value: lightModeEnable,
    );
    notifyListeners();
  }

  ThemeData get themeData {
    return lightModeEnable
        ? ThemeData.light().copyWith(
            scaffoldBackgroundColor: const Color(0xffF3F3F3),
          )
        : ThemeData.dark();
  }
}

// class ModeProvider with ChangeNotifier {
//   bool lightModeEnable = true; // default light

//   ModeProvider() {
//     // اقرأ القيمة المخزنة لما البروڤايدر يتبني
//     bool? savedMode = GetStorageHelper.getGetStorageData(key: 'lightMode');
//     if (savedMode != null) {
//       lightModeEnable = savedMode;
//     }
//   }

//   void toggleMode() async {
//     lightModeEnable = !lightModeEnable;
//     await GetStorageHelper.setGetStorageData(
//       key: 'lightMode',
//       value: lightModeEnable,
//     );
//     notifyListeners();
//   }

//   ThemeData get themeData {
//     return lightModeEnable
//         ? ThemeData.light().copyWith(
//             scaffoldBackgroundColor: const Color(0xffF3F3F3),
//           )
//         : ThemeData.dark();
//   }
// }
