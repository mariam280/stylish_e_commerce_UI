import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/themes/app_language.dart';
import 'package:stylish_e_commerce/core/widgets/custom_card.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton(
      {super.key, required this.languageName, required this.image, this.onTap});
  final String languageName, image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomCard(
        aspectRatio: 182 / 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(languageName),
            CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
