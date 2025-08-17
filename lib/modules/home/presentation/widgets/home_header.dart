import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
      Image.asset(Assets.imagesDropmenu,fit: BoxFit.contain,),
      Spacer(),
      Image.asset(Assets.imagesLogo,fit: BoxFit.contain,),
      Spacer(),
      CircleAvatar(backgroundImage: AssetImage(Assets.imagesAvatar,),),
    ],);
  }
}