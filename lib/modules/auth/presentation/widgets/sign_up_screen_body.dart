import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/auth_screen_footer.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/other_way_auth.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/sign_up_form.dart';
import 'auth_header.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
       padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSize(h:MediaQuery.sizeOf(context).height*0.09),
            AuthHeader(title: 'Create an\naccount!'),
            CustomSize(h:30),
            SignUpForm(),
            Image.asset(Assets.imagesORContinueWith,fit: BoxFit.contain,),
            CustomSize(h:16),
            OtherWayAuth(),
            CustomSize(h:20),
            AuthScreenFooter(text: 'I Already Have an Account', textButton: ' Login',),
          ],
        ),
      ),
    );
  }
}