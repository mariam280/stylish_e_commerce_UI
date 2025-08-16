import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/another_way_auth_item.dart';

class OtherWayAuth extends StatelessWidget {
  const OtherWayAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnotherWayAuthItem(onTap: () {}, image: Assets.imagesGoogle),
        AnotherWayAuthItem(onTap: () {}, image: Assets.imagesApple),
        AnotherWayAuthItem(onTap: () {}, image: Assets.imagesFacebook),
      ],
    );
  }
}