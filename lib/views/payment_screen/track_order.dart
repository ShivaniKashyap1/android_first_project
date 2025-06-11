import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/reusable_appbar_home.dart';

import '../../reusable_widgets/small_widgets_before_home_screen/suggested_restaurants_design.dart';
import '../../utils/screen_colors.dart';
class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.inputBoxColorLightGreen,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              HomeAppBar(image: 'assets/images/back_image.png', title: 'Track Order'),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
              left: 0,
              right: 0,
              child:Container(
                height:MediaQuery
                    .of(context)
                    .size
                    .height * 0.78,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: SColors.appPrimaryWhite,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      RestaurantsDesign(
                        text: 'American Spicy Burger Shop',
                        image1: 'assets/images/res2.png',
                        image2: 'assets/images/star_image.png',
                        ratingVal: '4.3',
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ],
      )
    );
  }
}
