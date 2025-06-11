import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/reusable_email_box.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/payment_screen/payment_successful_screen.dart';

import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
class AddPaymentCard extends StatefulWidget {
  const AddPaymentCard({super.key});

  @override
  State<AddPaymentCard> createState() => _AddPaymentCardState();
}

class _AddPaymentCardState extends State<AddPaymentCard> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            HomeAppBar(
              image: 'assets/images_two/close_image.png',
              title: 'Add Card',
              color: SColors.textColorBlack,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            InputBox(inputName: 'shivani', inputTitle: 'CARD HOLDER NAME', controllerName:_emailController),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            InputBox(inputName: '2134-------', inputTitle: 'CARD NUMBER', controllerName:_emailController),
            SizedBox(height: MediaQuery.of(context).size.height * 0.48),
            RectangleButton(
              color: SColors.nextButtonOrange,
              name: 'ADD & MAKE PAYMENT',
              textColor: SColors.appPrimaryWhite,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>PaymentSuccessfulScreen() ),
                );
              },
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.90,
            ),

          ],
        ),
      ),
    );
  }
}
