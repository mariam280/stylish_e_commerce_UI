import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      ...List.generate(5, (index) => Icon(Icons.star, color: Colors.amber,size: 16,)),
      CustomSize(h: 8,),
      Text(r'  $344567',style: AppStyles.stylesRegular12(context).copyWith(
                    color: Color(0xff808488),
                   
                  ),),
    ]
      
    ,);
  }
}
