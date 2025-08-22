import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_feild.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/home_header.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/sort_and_filter_widget.dart';

class HomeAndFavoriteWidget extends StatelessWidget {
  const HomeAndFavoriteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      spacing: 16,
      children: [
        HomeHeader(),
        CustomTextField(
              hint: S.of(context).searchany,
              prefixIcon: Icons.search,
              suffixIcon: Icons.mic_none,
            ),
            SortAndFilterWidget(),
      ],
    );
  }
}
