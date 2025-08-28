import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';

class SplashBodyWidget extends StatelessWidget {
  const SplashBodyWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesSplashLogo,
              width: 70, height: 70, fit: BoxFit.contain),
          AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                  position: slidingAnimation,
                  child: Text(
                    ' Stylish',
                    style: AppStyles.styleBold40(context),
                    textAlign: TextAlign.center,
                  ),
                );
              }),
        ],
      ),
    );
  }
}
