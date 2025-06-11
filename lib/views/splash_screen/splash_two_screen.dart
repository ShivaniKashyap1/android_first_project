import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/authentication/login_screen.dart';
import 'package:food_delivery_app/views/onboarding_screen/onboarding_screen.dart';
import 'package:get_storage_pro/get_storage_pro.dart';

import '../../utils/routes.dart';
import '../../utils/screen_colors.dart';

class SplashTwoScreen extends StatefulWidget {
  const SplashTwoScreen({super.key});

  @override
  State<SplashTwoScreen> createState() => _SplashTwoScreenState();
}

class _SplashTwoScreenState extends State<SplashTwoScreen> {
  final storageServices = GetStorage();
  bool onboarding=false;
  bool login=false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
       onboarding = storageServices.read('onBoardingStatus')?? false;
       login=storageServices.read('loginStatus') ?? false;
      if (onboarding == true && login!=true) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Routes.loginScreen),
        );
      }else if(login==true && onboarding == true ){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Routes.homeScreen),
        );
        log("step2");
      }
      else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Routes.onBoardingScreen),
        );
        log("step3");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //first image..
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset('assets/images/ellipse_white.png'),
          ),

          //2nd image..
          Center(child: Image.asset('assets/images/logo.png')),

          //3 rd image...
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset('assets/images/ellipse_splash.png'),
          ),
        ],
      ),
    );
  }
}
