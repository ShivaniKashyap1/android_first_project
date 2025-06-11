import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/routes.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:get_storage_pro/get_storage_pro.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/reusable_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final dotBox = PageController();
  int currIndx = 0;
  final storageServices=GetStorage();
  bool onBoardingStatus=false;

  // define your list of onboarding screens....
  final List<Widget> pages = [
    ReusableOnboarding(
      title: "All your favorites",
      desc:
          "Get all your loved foods in one once place, you just place the order we do the rest ",
      Image: "assets/images/image_food1.png",
    ),
    ReusableOnboarding(
      title: "All your favorites",
      desc:
          "Get all your loved foods in one once place, you just place the order we do the rest 1",
      Image: "assets/images/image_food2.png",
    ),
    ReusableOnboarding(
      title: "Order from chosen chef",
      desc:
          "Get all your loved foods in one once place, you just place the order we do the rest 2",
      Image: "assets/images/image_food3.png",
    ),
    ReusableOnboarding(
      title: "Free delivery offers",
      desc:
          "Get all your loved foods in one once place, you just place the order we do the rest 3",
      Image: "assets/images/image_food4.png",
    ),
  ];

  //skip function..
  void skip() {
    dotBox.animateToPage(
      pages.length - 1,
      duration: Duration(microseconds: 200),
      curve: Curves.easeInOut,
    );
    storageServices.write('onBoardingStatus', true);
  }

  // next function..
  void next() {
    if (currIndx < pages.length - 1) {
      dotBox.animateToPage(
        currIndx + 1,
        duration: Duration(microseconds: 200),
        curve: Curves.easeInOut,
      );
      storageServices.write('onBoardingStatus', true);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Routes.loginScreen),
      );
      storageServices.write('onBoardingStatus', true);
    }
  }
// back method...
  void back(){
    if(currIndx>0){
      dotBox.animateToPage(
          currIndx-1,
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut);
    }
    storageServices.write('onBoardingStatus', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.68,
                child: Padding(
                  padding:  EdgeInsets.only(
                    top:MediaQuery.of(context).size.height * 0.15,
                    bottom:MediaQuery.of(context).size.height * 0.02,
                    left:MediaQuery.of(context).size.height * 0.02,
                    right:MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: PageView.builder(
                    controller: dotBox,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() {
                        currIndx = index;
                      });
                    },
                    itemBuilder: (context, index) => pages[index],
                  ),
                ),
              ),
              //  dot indicator design...
              SmoothPageIndicator(
                controller: dotBox,
                count: pages.length,
                effect: JumpingDotEffect(
                  activeDotColor: SColors.nextButtonOrange,
                  dotColor: SColors.unselectedDotColor,
                  dotHeight: 13,
                  dotWidth: 13,
                  spacing: 16,
                ),
                onDotClicked:
                    (index) => dotBox.animateToPage(
                  index,
                  duration: Duration(microseconds: 200),
                  curve: Curves.easeIn,
                ),
              ),
              //next button...
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              RectangleButton(
                color: SColors.nextButtonOrange,
                height: MediaQuery.of(context).size.height * 0.07,
                 width: MediaQuery.of(context).size.width * 0.90,
                textColor: SColors.appPrimaryWhite,
                name: currIndx<3
                    ?'NEXT'
                :'Get Started',
                onPressed: (){
                  next();
                },
              ),
              // // skip text...
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              InkWell(
                onTap: skip,
                child: Text(
                  currIndx<3
                  ?'Skip'
                  :"",
                  style: TextStyle(
                    fontFamily: 'FontSen',
                    fontWeight: FontWeight.w400,
                    color: SColors.textGrey,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              InkWell(
                onTap: back,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    currIndx>0
                        ?'Back'
                        :"",
                    style: TextStyle(
                      fontFamily: 'FontSen',
                      fontWeight: FontWeight.w500,
                      color: SColors.textGrey,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
