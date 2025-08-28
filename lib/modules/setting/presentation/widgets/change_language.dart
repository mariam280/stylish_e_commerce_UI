import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/logic/app_language.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/change_language_button.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(S.of(context).changeLanguage,style: AppStyles.stylesemiBold18(context)
                .copyWith(color: AppColors.secondaryColor(context)),),
        ChangeLanguageButton(
          onTap: (){
            langProvider.setLanguage('ar');
          },
          languageName: S.of(context).arabic,
          image: Assets.imagesEgyptFlag,
        ),
        ChangeLanguageButton(
          onTap: (){
            langProvider.setLanguage('en');
          },
          languageName: S.of(context).english,
          image: Assets.imagesAmerikaFlag,
        ),
      ],
    );
  }
}