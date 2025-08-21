import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/sort_and_filter_widget.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/similar_to_item_list.dart';

class SimilarTo extends StatelessWidget {
  const SimilarTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
      Text('Similar To',style: AppStyles.stylesemiBold18(context).copyWith(
        color: Colors.black,
        fontSize: 20
      ),),
      SortAndFilterWidget(),
      SimilartToItemsList(),
    ],);
  }
}