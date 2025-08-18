import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';

class ShopNowImage extends StatelessWidget {
  const ShopNowImage({super.key, required this.aspectRatio});
 final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          Assets.imagesShopNow,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}