import 'package:flutter/material.dart';
import 'package:shop_app/views/resetpassword/create%20_new%20_password.dart';
import 'package:shop_app/views/verification/otp%20_verification_2.dart';

import '../views/home/Bottom_nav_bar.dart';
import '../views/home/home_screen.dart';
import '../views/login/login_screem.dart';

import '../views/onboarding/onboarding_screen.dart';
import '../views/onboarding/signup/signup_screen.dart';
import '../views/resetpassword/resetpassword_screen.dart';
import '../views/splash/splash_screen.dart';
import '../views/verification/otp _verification_1.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String forgotPasswordRoutePhone = "/forgotPasswordPhone";
  static const String resetPassword = "/resetPass";
  static const String createNewPass = "/create";
  static const String bottomNavBar = "/bottomnavBar";
  static const String homeRoute = "/home";
  // static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => ShopLOginScreen()); //move
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => OtpVerification());
      case Routes.forgotPasswordRoutePhone:
        return MaterialPageRoute(builder: (_) => OtpVerificationPhone());
      case Routes.resetPassword:
        return MaterialPageRoute(builder: (_) => const RestPasswoordScreen());
      case Routes.createNewPass:
        return MaterialPageRoute(builder: (_) => const CreateNewPassword());
      case Routes.bottomNavBar:
        return MaterialPageRoute(builder: (_) => BottomNavBar());

      // case Routes.storeDetailsRoute:
      //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route found"),
              ),
              body: const Center(
                child: Text("No Route found"),
              ),
            ));
  }
}
