import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/favourite/presentation/widgets/favourite_card_grid_view.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/home_and_favorite_widget.dart';

class FavouriteScreenBody extends StatelessWidget {
  const FavouriteScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(children: [
        HomeAndFavoriteWidget(),
        CustomSize(h:8),
        Expanded(child: FavouriteCardGridView()),
        CustomSize(h:MediaQuery.sizeOf(context).height*0.07),
      ],),
    );
  }
}


