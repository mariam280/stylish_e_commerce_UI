import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shop_now_image.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/product_details.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/search_header.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/similar_to.dart';
import 'package:stylish_e_commerce/modules/search/presentation/widgets/viewall_similarto_button.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child:  Column(
          spacing: 20,
          children: [
          SearchHeader(),
          ShopNowImage(image: Assets.imagesNike, aspectRatio: 343/213),
          ProductDetails(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            InkWell(
              onTap: (){},
              child: Image.asset(Assets.imagesGotocart,fit: BoxFit.contain,)),
            CustomSize(w: 20,),
            InkWell(
              onTap: (){},
              child: Image.asset(Assets.imagesBuynow,fit: BoxFit.contain,)),
          ],),
          Image.asset(Assets.imagesDeliveryIn),
          Row(
          spacing: 4,
          children: [
          Expanded(child: ViewallSimilartoButton(text: 'View Similar', icon: Icons.visibility_outlined)),
          Expanded(child: ViewallSimilartoButton(text: 'Add To Compare', icon: Icons.local_offer_outlined)),
        ],),
          SimilarTo(),
          CustomSize(h:MediaQuery.sizeOf(context).height*0.05),
        ],),
      ),
    );
  }
}