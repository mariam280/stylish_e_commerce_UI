import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';

class OnboardScreenHeader extends StatelessWidget {
  const OnboardScreenHeader({super.key, required this.pageNumber});
  final int pageNumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$pageNumber",
                  style: AppStyles.stylesemiBold18(context).copyWith(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "/3",
                  style: AppStyles.stylesemiBold18(context).copyWith(
                    color: Color(0xffC4C4C4),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              //context.go(AppRouters.logIn);
              GoRouter.of(context).go(AppRouters.logIn);
            },
            child: Text(
              'Skip',
              style: AppStyles.stylesemiBold18(context).copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
