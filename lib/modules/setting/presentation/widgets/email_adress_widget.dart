import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_button.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/setting_show_email_and_password.dart';

class EmailAdressWidget extends StatelessWidget {
  const EmailAdressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email Adress',
          style: AppStyles.stylesRegular12(context),
        ),
        CustomSize(h: 8,),
        SettingShowEmailAndPassword(text: 'aashifa@gmail.com',),
        CustomSize(h: 10,),
        Text(
          'Password',
          style: AppStyles.stylesRegular12(context),
        ),
        CustomSize(h: 8,),
        SettingShowEmailAndPassword(text: '***********',),
        Align(
          alignment: Alignment.centerRight,
          child: CustomTextButton(text: 'Change password', onPressed: (){},
           textStyle: AppStyles.stylesemiBold18(context).copyWith(
            fontSize: 12,decoration: TextDecoration.underline), ),
        ),
      ],
    );
  }
}
