import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/food_screen/details_screen.dart';

import '../../reusable_widgets/food_box_designs/fast_food_box.dart';
import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/food_box_designs/reusable_appbar_home_new.dart';
import '../../reusable_widgets/food_box_designs/reusable_circle_design.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/horizontal_rectangle_box.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/rounded_rectangular_button.dart';

class RestaurantViewScreen extends StatefulWidget {
  const RestaurantViewScreen({super.key});

  @override
  State<RestaurantViewScreen> createState() => _RestaurantViewScreenState();
}

class _RestaurantViewScreenState extends State<RestaurantViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            HomeAppBarNew(
              leadingIcon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemId: "LLLLL",)));
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              title: 'Restaurant View',
              trailingIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            HorizontalRectangleBox(image: 'assets/images/res1.png'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _textOfFoodDetails(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _ratingColumnDesign(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            _sizeDesign(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              'Burger (10)',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: SColors.textColorBlack,
                fontSize: 16,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 800,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: FastFoodBox(
                              image: 'assets/images/image_food2.png',
                              text1: 'Americano Pizza with hot sauce',
                              text2: 'Cafenio Coffee Club',
                              height: MediaQuery.of(context).size.height * 0.17,
                              width: MediaQuery.of(context).size.width * 0.33,
                              icon: Icons.add,
                              textTwo: "100",
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          FastFoodBox(
                            image: 'assets/images/image_food2.png',
                            text1: 'Americano Pizza with hot sauce',
                            text2: 'Cafenio Coffee Club',
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.33,
                            icon: Icons.add,
                            textTwo: '43',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FastFoodBox(
                            image: 'assets/images/image_food2.png',
                            text1: 'Americano Pizza with hot sauce',
                            text2: 'Cafenio Coffee Club',
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.33,
                            icon: Icons.add,
                            textTwo: '53',
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          FastFoodBox(
                            image: 'assets/images/image_food2.png',
                            text1: 'Americano Pizza with hot sauce',
                            text2: 'Cafenio Coffee Club',
                            height: MediaQuery.of(context).size.height * 0.17,
                            width: MediaQuery.of(context).size.width * 0.33,
                            icon: Icons.add,
                            textTwo: '83',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textOfFoodDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Spicy restaurant',
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w700,
            color: SColors.textColorBlack,
            fontSize: 19,
          ),
        ),
        Text(
          'Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
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
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Text(
              '4.7',
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w700,
                color: SColors.textColorBlack,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.06),
        //delivery...
        Row(
          children: [
            Image.asset('assets/images/delivery_image.png'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
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
        SizedBox(width: MediaQuery.of(context).size.width * 0.06),
        // clock time...
        Row(
          children: [
            Image.asset('assets/images/clock_image.png'),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
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
        RoundedRectangleButton(
          text: 'Burger ',
          textColor: SColors.textColorBlack,
          borderColor: SColors.textGrey,
          onPressed: () {},
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        RoundedRectangleButton(
          text: 'Sandwich',
          textColor: SColors.textColorBlack,
          borderColor: SColors.textGrey,
          onPressed: () {},
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        RoundedRectangleButton(
          text: 'noodles',
          textColor: SColors.textColorBlack,
          borderColor: SColors.textGrey,
          onPressed: () {},
        ),
      ],
    );
  }
}
