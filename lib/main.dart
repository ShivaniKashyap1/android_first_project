import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/food_screen/details_screen.dart';
import 'package:food_delivery_app/views/onboarding_screen/onboarding_screen.dart';
import 'package:food_delivery_app/views/payment_screen/payment_method_no_card.dart';
import 'package:food_delivery_app/views/payment_screen/track_order.dart';
import 'package:food_delivery_app/views/splash_screen/splash_one_screen.dart';
import 'package:food_delivery_app/views/splash_screen/splash_two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
         '/':(context) =>TrackOrder(),
        //   '/':(context) =>SplashOneScreen(),
        '/splash_two':(context) =>SplashTwoScreen(),
        '/primary_onboarding':(context) =>OnboardingScreen(),
      },
    );
  }
}

