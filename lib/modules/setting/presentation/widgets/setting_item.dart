import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_text_form_feild.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      required this.title,
      required this.hint,
      required this.controller, this.validator});
  final String title, hint;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        CustomSize(h: 10,),
        Text(
          title,
          style: AppStyles.stylesRegular12(context),
        ),
        CustomTextFormField(
          fillColor: AppColors.widgetColor(context),
          controller: controller,
          hint: hint,
          validator: validator,
        ),
        //CustomSize(h: 10,),
      ],
    );
  }
}
