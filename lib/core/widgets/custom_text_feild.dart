import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/logic/app_them.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hint,
    this.isObscure = false,
    this.keyboardType,
    this.maxLines = 1,
    this.controller, this.suffixIcon, this.prefixIcon,
  });
  final String? hint;
  final bool isObscure;
  final TextInputType? keyboardType;
  final int? maxLines;
  final TextEditingController? controller;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      maxLines: maxLines,
      keyboardType: keyboardType,
      obscureText: isObscure,
      decoration: InputDecoration(
        isDense: true,
        hintText: hint,
        hintStyle: AppStyles.stylesMedium16(context).copyWith(color: Color(0xffA8A8A9)),
        suffixIcon: Icon(suffixIcon,color:Color(0xffA8A8A9)),
        prefixIcon: Icon(prefixIcon,color: Color(0xffA8A8A9)),
        filled: true,
        fillColor: AppColors.widgetColor(context),
        border: border(context),
        focusedBorder: border(context),
        enabledBorder: border(context),
      ),
    );
  }

  OutlineInputBorder border(BuildContext context) {
    final modeProvider = Provider.of<ModeProvider>(context);
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color:modeProvider.lightModeEnable? Colors.white: Colors.black,width: 1),
    );
  }
}
