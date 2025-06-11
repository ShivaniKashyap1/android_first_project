import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/Search_field.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/fast_food_box.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rounded_rectangular_button.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/authentication/home_screen.dart';
import 'package:food_delivery_app/views/food_screen/burger_screen.dart';

import '../../reusable_widgets/small_widgets_before_home_screen/suggested_restaurants_design.dart';
import '../authentication/custom_search_deligate.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            HomeAppBar(
              image: 'assets/images/back_image.png',
              title: 'Search',
              imageTwo: 'assets/images/add_bag.png',
              color: SColors.textColorBlack,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            SearchField(
              hintText: 'Pizza',
              icon: Icons.search,
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDelegate());
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent KeyWords',
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w500,
                        color: SColors.textColorBlack,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RoundedRectangleButton(
                            text: 'Burger',
                            textColor: SColors.textColorBlack,
                            borderColor: SColors.textGrey,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BurgerScreen(),
                                ),
                              );
                            },
                          ),
                          RoundedRectangleButton(
                            text: 'Sandwich',
                            textColor: SColors.textColorBlack,
                            borderColor: SColors.textGrey,
                            onPressed: () {},
                          ),
                          RoundedRectangleButton(
                            text: 'Pizza',
                            textColor: SColors.textColorBlack,
                            borderColor: SColors.textGrey,
                            onPressed: () {},
                          ),
                          RoundedRectangleButton(
                            text: 'Noodles',
                            textColor: SColors.textColorBlack,
                            borderColor: SColors.textGrey,
                            onPressed: () {},
                          ),
                          RoundedRectangleButton(
                            text: 'Momos',
                            textColor: SColors.textColorBlack,
                            borderColor: SColors.textGrey,
                            onPressed: () {},
                          ),
                          RoundedRectangleButton(
                            text: 'chilli potato',
                            textColor: SColors.textColorBlack,
                            borderColor: SColors.textGrey,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Text(
                      'Suggested Restaurants',
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w500,
                        color: SColors.textColorBlack,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    RestaurantsDesign(
                      text: 'Pansi Restaurant',
                      image1: 'assets/images/res3.png',
                      image2: 'assets/images/star_image.png',
                      ratingVal: '4.7',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    RestaurantsDesign(
                      text: 'American Spicy Burger Shop',
                      image1: 'assets/images/res2.png',
                      image2: 'assets/images/star_image.png',
                      ratingVal: '4.3',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    RestaurantsDesign(
                      text: 'Cafenio Coffee Club',
                      image1: 'assets/images/res1.png',
                      image2: 'assets/images/star_image.png',
                      ratingVal: '4.0',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    Text(
                      'Popular Fast food',
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w500,
                        color: SColors.textColorBlack,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      children: [
                        FastFoodBox(
                          image: 'assets/images/image_food2.png',
                          text1: 'European Pizza',
                          text2: 'Uttora Coffe House',
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.33,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                        ),
                        FastFoodBox(
                          image: 'assets/images/image_food2.png',
                          text1: 'Americano Pizza with hot sauce',
                          text2: 'Cafenio Coffee Club',
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.33,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
