import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/business_adress_details.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/change_language.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/email_adress_widget.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 30,
          children: [
            Text(
              'Setting',
              style: AppStyles.stylesemiBold18(context)
                  .copyWith(color: AppColors.secondaryColor(context)),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(Assets.imagesAvatar),
            ),
            EmailAdressWidget(),
            Divider(thickness: 0.3,),
            BusinessAdressDetails(),
            ChangeLanguage(),
            CustomSize(h:MediaQuery.sizeOf(context).height*0.15),
          ],
        ),
      ),
    );
  }
}
