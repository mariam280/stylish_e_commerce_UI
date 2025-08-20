import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class CheckOutDetailsText extends StatelessWidget {
  const CheckOutDetailsText(
      {super.key, required this.title, required this.subTitle, this.style});
  final String title, subTitle;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: style?? AppStyles.stylesMedium18(context),
        ),
        Spacer(),
        Text(
          subTitle,
          style: style?? AppStyles.stylesMedium18(context),
        ),
      ],
    );
  }
}