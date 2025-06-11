import 'package:flutter/material.dart';

import '../food_box_designs/food_rectangle_card.dart';
import 'rectangle_button.dart';
import '../../../utils/screen_colors.dart';

class ReusableOnboarding extends StatelessWidget {
  final String title;
  final String desc;
  final String Image;

  const ReusableOnboarding({
    super.key,
    required this.title,
    required this.desc,
    required this.Image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //image..
          Center(
            child: RectangleCard(
              image: Image,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ),
          //highLighted Text..
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w700,
                color: SColors.textColorBlack,
                fontSize: 22,
              ),
            ),
          ),

          // normal text...
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                desc,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w500,
                  color: SColors.textColorBlack,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
