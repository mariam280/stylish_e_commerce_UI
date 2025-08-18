import 'package:flutter/material.dart';

class DealOfTheDayImage extends StatelessWidget {
  const DealOfTheDayImage({super.key, required this.image, required this.aspectRatio});
  final String image;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
