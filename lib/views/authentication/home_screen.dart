import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/horizontal_rectangle_box.dart';
import 'package:food_delivery_app/reusable_widgets/food_box_designs/reusable_appbar_home.dart';
import 'package:food_delivery_app/utils/constants.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
import 'package:food_delivery_app/views/food_screen/search_screen.dart';
import 'package:get_storage_pro/get_storage_pro.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/Search_field.dart';
import '../../reusable_widgets/small_widgets_before_home_screen/category_box_design.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final storageServices = GetStorage();
  bool isCircleSelected = false;
  double latitudeValue = 0.0;
  double longitudeValue = 0.0;
  int selectedIndex = 0;
  Map<String, bool> toggleValue = {
    "All": false,
    "Hot Dog": false,
    "Burger": false,
  };

  @override
  void initState() {
    super.initState();
    latitudeValue = storageServices.read(Constants.latitude);
    longitudeValue = storageServices.read(Constants.longitude);

    Timer(Duration(seconds: 2), () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            /// close button design of pop-up screen......
            child: _popUpOffersCardDesign(),
          );
        },
      );
    });
  }

  // toggle color...
  void toggleColor() {
    // for(int i = 0; i <= toggleValue.length; i++){
    //   toggleValue[] = true;
    // }

    switch (selectedIndex) {
      case 0:
        toggleValue.update("All", (value) => true);
        toggleValue.update("Hot Dog", (value) => false);
        toggleValue.update("Burger", (value) => false);
        log('toggle1');
        break;
      case 1:
        toggleValue.update("Hot Dog", (value) => true);
        toggleValue.update("All", (value) => false);
        toggleValue.update("Burger", (value) => false);
        log('toggle2');
        break;
      case 2:
        toggleValue.update("Burger", (value) => true);
        toggleValue.update("Hot Dog", (value) => false);
        toggleValue.update("All", (value) => false);
        log('toggle3');
        break;
      default:
        log('toggle4');
        break;
    }
  }

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
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            HomeAppBar(
              image: 'assets/images/side_menu.png',
              title: 'Deliver to',
              color: SColors.nextButtonOrange,
              subtitle: '$latitudeValue',
              latTitle: 'Lat:',
              longTitle: 'Long:',
              subtitleTwo: '$longitudeValue',
              imageTwo: 'assets/images/add_bag.png',
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Text('Hey Hello, '),
                Text(
                  'Good Afternoon!',
                  style: TextStyle(
                    fontFamily: 'FontSen',
                    fontWeight: FontWeight.w700,
                    color: SColors.textColorBlack,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              child: SearchField(
                hintText: 'Search dishes,restaurants',
                icon: Icons.search,
                onPressed: () {},
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All Categories',
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w400,
                                color: SColors.textColorBlack,
                                fontSize: 19,
                              ),
                            ),
                            Text(
                              'See All',
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w400,
                                color: SColors.textColorBlack,
                                fontSize: 17,
                              ),
                            ),
                            // dropDown....
                          ],
                        ),
                        //all
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        SizedBox(
                          height: 60,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: toggleValue.length,
                            itemBuilder: (context, index) {
                              String key = toggleValue.keys.elementAt(index);
                              bool value = toggleValue[key]!;
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CategoryBox(
                                    text: key,
                                    image: 'assets/images/burger_food_image.png',
                                    color:
                                        value
                                            ? SColors.unselectedDotColor
                                            : SColors.appPrimaryWhite,
                                    onPressed: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                      toggleColor();
                                    },
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Open Restaurants',
                          style: TextStyle(
                            fontFamily: 'FontSen',
                            fontWeight: FontWeight.w400,
                            color: SColors.textColorBlack,
                            fontSize: 19,
                          ),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                            fontFamily: 'FontSen',
                            fontWeight: FontWeight.w400,
                            color: SColors.textColorBlack,
                            fontSize: 17,
                          ),
                        ),
                        // dropDown....
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(image: 'assets/images/res1.png'),
                    _restaurantNameDesign(
                      'Rose Garden Restaurant',
                      'Burger - fried - Riche - Wings',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    _ratingColumnDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(
                      image: 'assets/images/restaurants.png',
                    ),
                    _restaurantNameDesign(
                      'The Grand Haveli',
                      'Burger - fried - Riche - Wings',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    _ratingColumnDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(image: 'assets/images/res3.png'),
                    _restaurantNameDesign(
                      'The Gilded Feast',
                      'Burger - fried - Riche - Wings',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    _ratingColumnDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    HorizontalRectangleBox(image: 'assets/images/res2.png'),
                    _restaurantNameDesign(
                      'Slice of Heaven',
                      'Burger - fried - Riche - Wings',
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    _ratingColumnDesign(),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // reusable method with return type widget..
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

  Widget _popUpOffersCardDesign() {
    return Stack(
      clipBehavior: Clip.none, // Allows overflow for the close button
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [SColors.offerCardYellow, SColors.offerCardDarkYellow],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hurry offers!',
                style: TextStyle(
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w700,
                  color: SColors.appPrimaryWhite,
                  fontSize: 28,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                '#1243CD2',
                style: TextStyle(
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w600,
                  color: SColors.appPrimaryWhite,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                'Use the cupon get 25% discount',
                style: TextStyle(
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w600,
                  color: SColors.appPrimaryWhite,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.09),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.54,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: TextButton.styleFrom(
                      side: BorderSide(
                        color: SColors.appPrimaryWhite,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'GOT IT',
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w600,
                        color: SColors.appPrimaryWhite,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        /// Close Button Positioned
        Positioned(
          top: -20,
          right: -10,
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: SColors.unselectedDotColor,
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "X",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: SColors.nextButtonOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
