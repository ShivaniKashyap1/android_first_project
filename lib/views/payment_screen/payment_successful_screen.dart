import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/food_rectangle_card.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/reusable_onboarding.dart';
import 'package:food_delivery_app/views/payment_screen/track_order.dart';

import '../../utils/screen_colors.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
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
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.height * 0.02,
                    right: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: ReusableOnboarding(
                    title: 'Congratulations!',
                    desc:
                        'You successfully maked a payment,enjoy our service!"',
                    Image: 'assets/images_two/congratulations.png',
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              RectangleButton(
                color: SColors.nextButtonOrange,
                name: 'TRACK ORDER',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>TrackOrder()));
                },
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.90,
                textColor: SColors.appPrimaryWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
