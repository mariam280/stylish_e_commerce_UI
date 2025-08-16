import 'package:go_router/go_router.dart';
import 'package:stylish_e_commerce/core/routing/app_routers.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/screens/login_screen.dart';
import 'package:stylish_e_commerce/modules/auth/presentation/screens/sign_up_screen.dart';
import 'package:stylish_e_commerce/modules/onBoarding/presentation/screens/on_boarding_screen.dart';
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
      // GoRoute(
      //   path: AppRouters.homeLayout,
      //   builder: (context, state){
      //   return HomeLayout();
      //  },
      // ),
      //  GoRoute(
      //   path: AppRouters.myCart,
      //   builder: (context, state) => const MyCartScreen(),
      // ),
    ],
  );
}
