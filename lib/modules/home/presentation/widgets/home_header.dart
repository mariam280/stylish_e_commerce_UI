import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/logic/app_them.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final modeProvider = context.watch<ModeProvider>();
    return Row(
      children: [
        IconButton(
            onPressed: () {
              modeProvider.toggleMode();
            },
            icon: modeProvider.lightModeEnable
                ? const Icon(Icons.nightlight_round)
                : const Icon(Icons.sunny)),
        Spacer(),
        Image.asset(
          Assets.imagesLogo,
          fit: BoxFit.contain,
        ),
        Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage(
            Assets.imagesAvatar,
          ),
        ),
      ],
    );
  }
}
