import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';

class GetStartScreenBody extends StatelessWidget {
  const GetStartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.black,
                Colors.black.withValues(alpha: 0.0),
              ],
            ),
          ),
          child: Image.asset(
            Assets.imagesEntryPhoto,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: Text(
              'You want\nAuthentic, here\nyou go!',
              textAlign: TextAlign.center,
              style: AppStyles.stylesemiBold34(context),
            )),
        Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.17,
            child: Text(
              'Find it here, buy it now!',
              textAlign: TextAlign.center,
              style: AppStyles.stylesRegular14(context)
                  .copyWith(color: Color(0xffF2F2F2)),
            )),
        Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.sizeOf(context).height * 0.05,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomButon(
                text: 'Get Started',
                onTap: () {
                  GoRouter.of(context).go(AppRouters.layout);
                },
                color: AppColors.primaryColor,
              ),
            )),
      ],
    );
  }
}
