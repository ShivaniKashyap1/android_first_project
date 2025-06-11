import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';
class RectangularBoxDesignPayment extends StatelessWidget {
  final String image;
  final String imageText;

  const RectangularBoxDesignPayment({super.key, required this.image, required this.imageText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02,),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.22,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              width: MediaQuery.of(context).size.width * 0.24,
              child: Card(
                color: SColors.inputBoxColorLightGreen,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(image,),
                  ),
                ),
              ),
            ),

            Text(imageText,
              style: TextStyle(
                color: SColors.textColorBlack,
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
