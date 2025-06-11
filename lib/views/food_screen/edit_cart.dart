import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/cart_items_design.dart';
import 'package:food_delivery_app/views/payment_screen/payment_method_no_card.dart';

import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/food_box_designs/reusable_appbar_home_new.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/suggested_restaurants_design.dart';
import '../../utils/screen_colors.dart';

class EditCart extends StatefulWidget {
  const EditCart({super.key});

  @override
  State<EditCart> createState() => _EditCartState();
}

class _EditCartState extends State<EditCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                HomeAppBarNew(
                    leadingIcon: Image.asset('assets/images/back_image.png'),
                    title: 'Cart',
                    trailingIcon: GestureDetector(
                      onTap: (){},
                      child: Text('EDIT ITEMS',
                        style: TextStyle(
                          color: SColors.nextButtonOrange,
                          fontFamily: 'FontSen',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),),
                    )),

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                CartItemsDesign(
                  image: 'assets/images/image_food2.png',
                  text: 'pizza calzone european',
                  textTwo: '\$64',
                  sizeValue: "14’",
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.32,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                CartItemsDesign(
                  image: 'assets/images/image_food2.png',
                  text: 'pizza calzone european',
                  textTwo: '\$264',
                  sizeValue: "8’",
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.32,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                CartItemsDesign(
                  image: 'assets/images/image_food2.png',
                  text: 'pizza calzone european',
                  textTwo: '\$644',
                  sizeValue: "11’",
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 0.32,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.32,
              width: double.infinity,
              decoration: BoxDecoration(
                color: SColors.inputBoxColorLightGreen,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _bottomSheetDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    RectangleButton(
                      color: SColors.appPrimaryWhite,
                      name: '2118 Thornridge Cir. Syracuse',
                      textColor: SColors.greyColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditCart()),
                        );
                      },
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.90,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "TOTAL:",
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w400,
                                color: SColors.greyColor,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            Text(
                              "\$96",
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w600,
                                color: SColors.textColorBlack,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Breakdown",
                          style: TextStyle(
                            fontFamily: 'FontSen',
                            fontWeight: FontWeight.w400,
                            color: SColors.nextButtonOrange,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    RectangleButton(
                      color: SColors.nextButtonOrange,
                      name: 'PLACE ORDER',
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomSheetDesign() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery Address",
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w400,
                color: SColors.greyColor,
                fontSize: 18,
              ),
            ),
            Text(
              'EDIT',
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w400,
                color: SColors.nextButtonOrange,
                fontSize: 18,
              ),
            ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.67),
      ],
    );
  }
}
