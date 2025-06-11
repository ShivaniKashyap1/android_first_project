import 'dart:ui';
import 'package:food_delivery_app/views/authentication/home_screen.dart';
import 'package:food_delivery_app/views/authentication/login_screen.dart';
import 'package:food_delivery_app/views/onboarding_screen/onboarding_screen.dart';
import 'package:food_delivery_app/views/splash_screen/splash_one_screen.dart';
import 'package:food_delivery_app/views/splash_screen/splash_two_screen.dart';
class Routes{
  Routes._();
  static const splashOne=SplashOneScreen();
  static const splashTwo=SplashTwoScreen();
  static const onBoardingScreen=OnboardingScreen();
  static const loginScreen=LoginScreen();
  static const homeScreen=HomeScreen();
}