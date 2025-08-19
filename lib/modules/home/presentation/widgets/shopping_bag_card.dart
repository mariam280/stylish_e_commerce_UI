import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/home/presentation/widgets/shopping_bag_card_info.dart';

class ShoppingBagCard extends StatelessWidget {
  const ShoppingBagCard({super.key,});
  //final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 153,
      child: AspectRatio(
        aspectRatio: 335/153,
        child: Row(
          children: [
            SizedBox(
              width: 123,
              child: AspectRatio(
                aspectRatio: 123 / 153,
                child: ClipRRect(
                  child: Image.asset(
                   Assets.imagesBlackWinter,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            ShoppingBagCardInfo(),
          ],
        ),
      ),
    );
  }
}

