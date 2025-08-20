import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_styles.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';
import 'package:stylish_e_commerce/core/widgets/custom_button.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
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
            'Business address Details',
            style: AppStyles.stylesemiBold18(context)
                .copyWith(color: Colors.black),
          ),
          SettingItem(
              title: 'PinCode',
              hint: 'your pinCode',
              controller: pinController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
                return null;
              }),
          SettingItem(
            title: 'Address',
            hint: 'your address',
            controller: addressController,
            validator:(value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
                return null;
              }
          ),
          SettingItem(
            title: 'City',
            hint: 'your city',
            controller: cityController,
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
                return null;
              }
          ),
          SettingItem(
            title: 'State',
            hint: 'your state',
            controller: stateController,
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
                return null;
              }
          ),
          SettingItem(
            title: 'Country',
            hint: 'your country',
            controller: countryController,
            validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'field is required';
                }
                return null;
              }
          ),
          CustomSize(h:30),
          CustomButon(
            text: 'Save',
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
