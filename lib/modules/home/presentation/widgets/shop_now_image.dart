import 'package:flutter/material.dart';

class ShopNowImage extends StatelessWidget {
  const ShopNowImage({super.key, required this.aspectRatio, required this.image});
  final double aspectRatio;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
