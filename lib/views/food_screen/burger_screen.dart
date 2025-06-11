import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/burger_appbar.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/fast_food_box.dart';
import 'package:food_delivery_app/views/food_screen/details_screen.dart';
import 'package:food_delivery_app/views/food_screen/search_screen.dart';

import '../../reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/horizontal_rectangle_box.dart';
import '../../utils/screen_colors.dart';

class BurgerScreen extends StatefulWidget {
  const BurgerScreen({super.key});

  @override
  State<BurgerScreen> createState() => _BurgerScreenState();
}

class _BurgerScreenState extends State<BurgerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            BurgerAppbar(
              imageOne: 'assets/images/back_image.png',
              textOne: 'Burger',
              iconOne: Icons.search,
              iconTwo: Icons.tune,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular Burgers',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        color: SColors.textColorBlack,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen()));
                              },
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
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
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
                        SizedBox(height: MediaQuery.of(context).size.height * 0.14),
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
                            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.14),
                    Text(
                      'Open Restaurants',
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w400,
                        color: SColors.textColorBlack,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(image: 'assets/images/res1.png'),
                    _restaurantNameDesign(
                      'The Gilded Feast',
                      'Burger - fried - Riche - Wings',
                    ),
                    _ratingColumnDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(image: 'assets/images/res2.png'),
                    _restaurantNameDesign(
                      'The Gilded Feast',
                      'Burger - fried - Riche - Wings',
                    ),
                    _ratingColumnDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(image: 'assets/images/res3.png'),
                    _restaurantNameDesign(
                      'The Gilded Feast',
                      'Burger - fried - Riche - Wings',
                    ),
                    _ratingColumnDesign(),
                  ],
                ),
              ),
            ),
            

          ],
        ),
      ),
    );
  }

  Widget _restaurantNameDesign(String title, String dish) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w400,
            color: SColors.textColorBlack,
            fontSize: 19,
          ),
        ),
        Text(
          dish,
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w400,
            color: SColors.textGrey,
            fontSize: 12,
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
                fontWeight: FontWeight.w600,
                color: SColors.textColorBlack,
                fontSize: 12,
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
}
