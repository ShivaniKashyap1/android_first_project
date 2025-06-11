import 'package:flutter/material.dart';
import '../../utils/screen_colors.dart';

class RestaurantsDesign extends StatelessWidget {
  final String text;
  final String image1;
  final String image2;
  final String ratingVal;

  const RestaurantsDesign({
    super.key,
    required this.text,
    required this.image1,
    required this.image2,
    required this.ratingVal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
              width: MediaQuery.of(context).size.width * 0.18,
              child: Card(
                color: SColors.appPrimaryWhite,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(image1, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(
                  color: SColors.textColorBlack,
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  children: [
                    Image.asset(image2),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(ratingVal,
                      style: TextStyle(
                        color: SColors.textColorBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width * 0.95,
          color: SColors.horizontalDivider,
        ),
      ],
    );
  }
}
