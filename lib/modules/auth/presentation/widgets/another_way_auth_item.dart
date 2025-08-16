import 'package:flutter/material.dart';

class AnotherWayAuthItem extends StatelessWidget {
  const AnotherWayAuthItem({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Image.asset(image,fit: BoxFit.contain,),
      ),
    );
  }
}