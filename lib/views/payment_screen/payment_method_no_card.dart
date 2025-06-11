import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/payment_screen_reusable/add_new_boxdesign.dart';
import 'package:food_delivery_app/reusable_widgets/payment_screen_reusable/rectagular_box_design_payment.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/payment_screen/payment_method_screen.dart';

import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';

class PaymentMethodNoCard extends StatefulWidget {
  const PaymentMethodNoCard({super.key});

  @override
  State<PaymentMethodNoCard> createState() => _PaymentMethodNoCardState();
}

class _PaymentMethodNoCardState extends State<PaymentMethodNoCard> {
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
            _masterCardDesign(),

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
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            _bottomDesignOfButton(),
          ],
        ),
      ),
    );
  }

  Widget _masterCardDesign() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      width: double.infinity,
      child: Card(
        color: SColors.inputBoxColorLightGreen,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredBox(
              color: Colors.yellow,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ColoredBox(
                  color: Colors.transparent,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB4riVslIQW2n3UPr3v1I1gfU2n9XlJv7MHQ&s", //'assets/images_two/mastercard_image.png'
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.28,
                    // width:MediaQuery.of(context).size.height * 0.88,
                  ),
                ),
              ),
            ),
            Text('No master card added'),
            Text('You can add a mastercard and save it for later'),
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
                color: SColors.textGrey,
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
              MaterialPageRoute(builder: (context) => PaymentMethodNoCard()),
            );
          },
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.90,
        ),
      ],
    );
  }
}
