import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';

class FastFoodBox extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final double height;
  final double width;
  final IconData? icon;
  final String? dollar;
  final String? textTwo;

  const FastFoodBox({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.height,
    required this.width,
    this.icon,
    this.textTwo, this.dollar,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // allows overflow
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          child:
              (icon != null && textTwo!=null)
                  ? SizedBox(
                    height: height,
                    width: width,
                    child: Card(
                      elevation: 1,
                      color: SColors.appPrimaryWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              text1,
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w700,
                                color: SColors.textColorBlack,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              text2,
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w400,
                                color: SColors.textGrey,
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ ${textTwo!}"),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor:SColors.nextButtonOrange ,
                                      child: Icon(icon,color: SColors.appPrimaryWhite,size: 25,),),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  : SizedBox(
                    height: height,
                    width: width,
                    child: Card(
                      elevation: 1,
                      color: SColors.appPrimaryWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              text1,
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w700,
                                color: SColors.textColorBlack,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              text2,
                              style: TextStyle(
                                fontFamily: 'FontSen',
                                fontWeight: FontWeight.w400,
                                color: SColors.textGrey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.33,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 1,
              color: SColors.appPrimaryWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
