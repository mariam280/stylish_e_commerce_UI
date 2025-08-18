import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shop_now_image.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/widgets/custom_dot_shop_now_list.dart';

class ShopNowHome extends StatefulWidget {
  const ShopNowHome({super.key});

  @override
  State<ShopNowHome> createState() => _ShopNowHomeState();
}

class _ShopNowHomeState extends State<ShopNowHome> {
 late  PageController pageController;
  int currentPageIndex = 1;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.26,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        spacing: 8,
        children: [
          ExpandablePageView(controller: pageController, children: [
            ShopNowImage(aspectRatio: 343 / 189,),
            ShopNowImage(aspectRatio: 343 / 189,),
            ShopNowImage(aspectRatio: 343 / 189,),
          ]),
          CustomDotShopNowList(currentPageIndex: currentPageIndex)
        ],
      ),
    );
  }
}
