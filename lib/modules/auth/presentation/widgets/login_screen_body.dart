import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/constants/app_images.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/core/widgets/size.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/auth_header.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/auth_screen_footer.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/login_form.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/widgets/other_way_auth.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomSize(h: MediaQuery.sizeOf(context).height * 0.05),
            AuthHeader(title: 'Welcome\nBack!'),
            CustomSize(h: 30),
            LoginForm(),
            Image.asset(
              Assets.imagesORContinueWith,
              fit: BoxFit.contain,
            ),
            CustomSize(h: 16),
            OtherWayAuth(),
            CustomSize(h: 20),
            AuthScreenFooter(
              onTap: () {
                GoRouter.of(context).go(AppRouters.signUp);
              },
              text: 'Create An Account',
              textButton: ' Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
