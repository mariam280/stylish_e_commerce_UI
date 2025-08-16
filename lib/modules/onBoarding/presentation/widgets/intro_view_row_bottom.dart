import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/dots_indicator.dart';

import '../../../../core/constants/app_styles.dart';

class IntroViewRowBottom extends StatelessWidget {
  const IntroViewRowBottom({
    super.key,
    required this.currentPageIndex,
    required this.back,
    required this.next,
    this.onTapNext,
    this.onTapBack,
  });
  final int currentPageIndex;
  final String back;
  final String next;
  final Function()? onTapNext;
  final Function()? onTapBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 25, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTapBack,
            child: Text(
              back,
              style: AppStyles.stylesMedium18(context).copyWith(
                color: Color(0xffC4C4C4),
              ),
            ),
          ),
          DotsIndicator(currentPageIndex: currentPageIndex),
          InkWell(
            onTap: onTapNext,
            child: Text(
              next,
              style: AppStyles.stylesemiBold18(context),
            ),
          ),
        ],
      ),
    );
  }
}
