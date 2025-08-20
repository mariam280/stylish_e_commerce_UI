import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';

class CheckOutScreenHeader extends StatelessWidget {
  const CheckOutScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      Spacer(),
      Text('Shopping Bag',style: AppStyles.stylesemiBold18(context).copyWith(
            color: Colors.black
          ),),
          Spacer(),
    ],);
  }
}