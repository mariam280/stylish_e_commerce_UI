import 'package:flutter/material.dart';

class DealOfTheDayImage extends StatelessWidget {
  const DealOfTheDayImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 170/124, 
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
