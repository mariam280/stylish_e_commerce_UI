
import 'package:flutter/material.dart';

class NearestVipReturn extends StatelessWidget {
  const NearestVipReturn({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}
