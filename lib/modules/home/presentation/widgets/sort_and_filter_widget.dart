import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class SortAndFilterWidget extends StatelessWidget {
  const SortAndFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Feature',
          style:
              AppStyles.stylesMedium18(context).copyWith(color: Colors.black),
        ),
        Spacer(),
        SortAndFilterWidgetItem(
          text: 'Sort ',
          icon1: Icons.arrow_upward,
          icon2: Icons.arrow_downward,
          onTap: (){},
        ),
        SortAndFilterWidgetItem(
          text: 'Filter ',
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
            color: Colors.white,
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
                  icon1,
                  size: 12,
                ),
                Icon(
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
