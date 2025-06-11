import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/payment_screen/add_payment_card.dart';

import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/payment_screen_reusable/add_new_boxdesign.dart';
import '../../reusable_widgets/payment_screen_reusable/rectagular_box_design_payment.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
              image: 'assets/images/back_image.png',
              title: 'Payment',
              color: SColors.textColorBlack,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RectangularBoxDesignPayment(
                    image: 'assets/images/cash_image.png',
                    imageText: 'Cash',
                  ),
                  RectangularBoxDesignPayment(
                    image: 'assets/images_two/visa_image.png',
                    imageText: 'Visa',
                  ),
                  RectangularBoxDesignPayment(
                    image: 'assets/images_two/mastercad.png',
                    imageText: 'MasterCard',
                  ),
                  RectangularBoxDesignPayment(
                    image: 'assets/images_two/paypal_image.png',
                    imageText: 'PayPal',
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            AddNewBoxdesign(
              icon: Icons.add,
              text: 'ADD NEW',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethodScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.45),
            _bottomDesignOfButton(),
          ],
        ),
      ),
    );
  }

  Widget _bottomDesignOfButton() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'TOTAL:',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: SColors.greyColor,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            Text(
              '\$96',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: SColors.textColorBlack,
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        RectangleButton(
          color: SColors.nextButtonOrange,
          name: 'PAY & CONFIRM',
          textColor: SColors.appPrimaryWhite,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPaymentCard()),
            );
          },
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.90,
        ),
      ],
    );
  }
}
