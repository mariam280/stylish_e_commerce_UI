import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class OnboardItem extends StatelessWidget {
  const OnboardItem({super.key, required this.image, required this.title, required this.description});
  final String image,title,description;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.sizeOf(context).height,
       width: MediaQuery.sizeOf(context).width,
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Text(title,style: AppStyles.styleExtraBold24(context),),
          Text(description,style: AppStyles.stylesemiBold14(context),),
        ],
      ),
    );
  }
}
