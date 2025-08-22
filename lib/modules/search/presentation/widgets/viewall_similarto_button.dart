import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class ViewallSimilartoButton extends StatelessWidget {
  const ViewallSimilartoButton({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.grey,
            width: 0.2,
          ),
        ),
        color: AppColors.widgetColor(context),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(icon),
            CustomSize(
              w: 8,
            ),
            Text(
              text,
              style: AppStyles.stylesemiBold14(context)
                  .copyWith(color: AppColors.secondaryColor(context)),
            ),
          ],
        ),
      ),
    );
  }
}
