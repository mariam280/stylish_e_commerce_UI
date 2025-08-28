import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/generated/l10n.dart';
import 'package:stylish_e_commerce/modules/setting/presentation/widgets/setting_item.dart';

class BusinessAdressDetails extends StatefulWidget {
  const BusinessAdressDetails({super.key});

  @override
  State<BusinessAdressDetails> createState() => _BusinessAdressDetailsState();
}

class _BusinessAdressDetailsState extends State<BusinessAdressDetails> {
  late TextEditingController pinController;
  late TextEditingController addressController;
  late TextEditingController cityController;
  late TextEditingController stateController;
  late TextEditingController countryController;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  void initState() {
    pinController = TextEditingController();
    addressController = TextEditingController();
    cityController = TextEditingController();
    stateController = TextEditingController();
    countryController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    pinController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).businessAddress,
            style: AppStyles.stylesemiBold18(context)
                .copyWith(color: AppColors.secondaryColor(context)),
          ),
          SettingItem(
              title: S.of(context).pincode,
              hint: S.of(context).yourpincode,
              controller: pinController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldRequired;
                }
                return null;
              }),
          SettingItem(
            title: S.of(context).address,
            hint: S.of(context).youraddress,
            controller: addressController,
            validator:(value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldRequired;
                }
                return null;
              }
          ),
          SettingItem(
            title: S.of(context).city,
            hint: S.of(context).yourcity,
            controller: cityController,
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldRequired;
                }
                return null;
              }
          ),
          SettingItem(
            title: S.of(context).state,
            hint: S.of(context).yourstate,
            controller: stateController,
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldRequired;
                }
                return null;
              }
          ),
          SettingItem(
            title: S.of(context).country,
            hint: S.of(context).yourcountry,
            controller: countryController,
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldRequired;
                }
                return null;
              }
          ),
          CustomSize(h:30),
          CustomButon(
            text: S.of(context).saveButton,
            color: AppColors.primaryColor,
            onTap: () {
              if (formKey.currentState!.validate()) {}
            },
          )
        ],
      ),
    );
  }
}
