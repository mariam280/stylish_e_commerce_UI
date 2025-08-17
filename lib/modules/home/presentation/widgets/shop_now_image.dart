import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';

class ShopNowImage extends StatelessWidget {
  const ShopNowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 343 / 189,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          Assets.imagesShopNow,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}