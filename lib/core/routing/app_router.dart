import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/screens/forgot_password_screen.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/screens/login_screen.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/screens/sign_up_screen.dart';
import 'package:stylish_e_commerce/modules/home/presentation/screens/shopping_bag_screen.dart';
import 'package:stylish_e_commerce/modules/layout/presentation/screens/get_start_screen.dart';
import 'package:stylish_e_commerce/modules/layout/presentation/screens/layout_screen.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/screens/on_boarding_screen.dart';
import 'package:stylish_e_commerce/modules/payment/presentation/screens/check_out_screen.dart';
import 'package:stylish_e_commerce/modules/splash/presentation/screens/splash_screen.dart';

abstract class AppRouter {
  static final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRouters.onboarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRouters.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRouters.logIn,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRouters.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRouters.getStart,
        builder: (context, state) => const GetStartScreen(),
      ),
      GoRoute(
        path: AppRouters.shoppingBag,
        builder: (context, state) => const ShoppingBagScreen(),
      ),
      GoRoute(
        path: AppRouters.layout,
        builder: (context, state) => const Layoutscreen(),
      ),
      GoRoute(
        path: AppRouters.checkOut,
        builder: (context, state) => const CheckOutScreen(),
      ),
      // GoRoute(
      //   path: AppRouters.homeLayout,
      //   builder: (context, state){
      //   return HomeLayout();
      //  },
      // ),
    ],
  );
}
