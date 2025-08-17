import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/circle_categories.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/home_and_favorite_widget.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shop_now_home.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HomeAndFavoriteWidget(),
          ),
          SliverToBoxAdapter(child: CircleCategories(),),
          SliverToBoxAdapter(child: CustomSize(h:8),),
          SliverToBoxAdapter(child: ShopNowHome(),),
        ],
      ),
    );
  }
}