import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class SortAndFilterWidget extends StatelessWidget {
  const SortAndFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).allFeature,
          style:
              AppStyles.stylesMedium18(context).copyWith(color: AppColors.secondaryColor(context)),
        ),
        Spacer(),
        SortAndFilterWidgetItem(
          text: S.of(context).sort,
          icon1: Icons.arrow_upward,
          icon2: Icons.arrow_downward,
          onTap: (){},
        ),
        SortAndFilterWidgetItem(
          text: S.of(context).filter,
          icon1: Icons.filter_alt_outlined,
          onTap: () {},
        )
      ],
    );
  }
}

class SortAndFilterWidgetItem extends StatelessWidget {
  const SortAndFilterWidgetItem(
      {super.key, required this.text, this.icon1, this.icon2, this.onTap});
  final String text;
  final IconData? icon1, icon2;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.widgetColor(context),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Text(
                  text,
                  style: AppStyles.stylesRegular12(context),
                ),
                Icon(
                  color: AppColors.secondaryColor(context),
                  icon1,
                  size: 12,
                ),
                Icon(
                  color: AppColors.secondaryColor(context),
                  icon2,
                  size: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
