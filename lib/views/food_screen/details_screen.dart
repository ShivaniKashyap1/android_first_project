import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/reusable_appbar_home_new.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/reusable_circle_design.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rectangle_button.dart';
import 'package:food_delivery_app/views/food_screen/burger_screen.dart';
import 'package:food_delivery_app/views/food_screen/edit_cart.dart';
import 'package:food_delivery_app/views/food_screen/restaurant_view_screen.dart';

import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/horizontal_rectangle_box.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rounded_rectangular_button.dart';
import '../../utils/screen_colors.dart';

class DetailsScreen extends StatefulWidget {
  final String? itemId;

  const DetailsScreen({super.key, this.itemId});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    var id = widget.itemId;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.04),
                HomeAppBar(
                  image: 'assets/images/back_image.png',
                  title: 'Cart',
                  color: SColors.textColorBlack,
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                Stack(
                  children: [
                    HorizontalRectangleBox(image: 'assets/images/res1.png'),
                    Positioned(
                      left: MediaQuery
                          .of(context)
                          .size
                          .height * 0.54,
                      right: MediaQuery
                          .of(context)
                          .size
                          .height * 0.03,
                      top: MediaQuery
                          .of(context)
                          .size
                          .height * 0.05,
                      child: CircleAvatar(
                        radius: 150,
                        child: Icon(
                          Icons.favorite_outline,
                          size: 21,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(right: 450),
                  child: RoundedRectangleButton(
                    text: 'Uttora Coffee House',
                    textColor: SColors.textColorBlack,
                    borderColor: SColors.textGrey,
                    image: 'assets/images/ellipse_check_box.png',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RestaurantViewScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                _textOfFoodDetails(),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                _ratingColumnDesign(),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                _sizeDesign(),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.02),
                _ingredientImageDesign(),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.17,
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
                  children: [
                    _bottomSheetDesign(),
                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.03),
                    RectangleButton(
                      color: SColors.nextButtonOrange,
                      name: 'ADD TO CART',
                      textColor: SColors.appPrimaryWhite,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EditCart()),
                        );
                      },
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.05,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.90,
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

  Widget _textOfFoodDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'pizza calzone european',
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w700,
            color: SColors.textColorBlack,
            fontSize: 19,
          ),
        ),
        Text(
          'Prosciutto e funghi is a pizza variety that is topped with tomato sauce.',
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w500,
            color: SColors.greyColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _ratingColumnDesign() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //rating...
        Row(
          children: [
            Image.asset('assets/images/star_image.png'),
            SizedBox(width: MediaQuery
                .of(context)
                .size
                .width * 0.01),
            Text(
              '4.7',
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w700,
                color: SColors.textColorBlack,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.06),
        //delivery...
        Row(
          children: [
            Image.asset('assets/images/delivery_image.png'),
            SizedBox(width: MediaQuery
                .of(context)
                .size
                .width * 0.01),
            Text(
              'Free',
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w600,
                color: SColors.textColorBlack,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.06),
        // clock time...
        Row(
          children: [
            Image.asset('assets/images/clock_image.png'),
            SizedBox(width: MediaQuery
                .of(context)
                .size
                .width * 0.01),
            Text(
              '20 min',
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w600,
                color: SColors.textColorBlack,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _sizeDesign() {
    return Row(
      children: [
        Text(
          'SIZE:',
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w600,
            color: SColors.textColorBlack,
            fontSize: 12,
          ),
        ),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.02),
        CircleDesign(text: '10”'),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.02),
        CircleDesign(text: '14”'),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.02),
        CircleDesign(text: '16”'),
      ],
    );
  }

  Widget _ingredientImageDesign() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'INGRIDENTS',
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w600,
            color: SColors.textColorBlack,
            fontSize: 12,
          ),
        ),
        SizedBox(height: MediaQuery
            .of(context)
            .size
            .height * 0.04),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CircleDesign(image: 'assets/images/salt.png'),
              CircleDesign(image: 'assets/images/garlic.png'),
              CircleDesign(image: 'assets/images/onion_image.png'),
              CircleDesign(image: 'assets/images/carrot.png'),
              CircleDesign(image: 'assets/images/chilli.png'),
              CircleDesign(image: 'assets/images/salt.png'),
              CircleDesign(image: 'assets/images/onion_image.png'),
              CircleDesign(image: 'assets/images/chilli.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bottomSheetDesign() {
    return Row(
      children: [
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.01),
        Padding(
          padding: const EdgeInsets.only(left: 11, top: 8),
          child: Text("\$ ${32}", style: TextStyle(fontSize: 21)),
        ),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width * 0.67),
        Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.04,
          width: MediaQuery
              .of(context)
              .size
              .width * 0.16,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                SizedBox(
                  height: 32,
                  width: 32,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: ColoredBox(
                      color: SColors.textGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove, color: Colors.white, size: 19),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.01),
                Text("1", style: TextStyle(color: Colors.white, fontSize: 21)),
                SizedBox(width: MediaQuery
                    .of(context)
                    .size
                    .width * 0.01),
                SizedBox(
                  height: 32,
                  width: 32,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ColoredBox(
                      color: SColors.textGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: Center(
                          child: Icon(Icons.add, color: Colors.white, size: 19),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
