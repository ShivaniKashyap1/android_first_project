import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';
class CartItemsDesign extends StatelessWidget {
  final String image;
  final String text;
  final String textTwo;
  final String sizeValue;
  final double height;
  final double width;
  const CartItemsDesign({super.key, required this.image, required this.text, required this.textTwo, required this.sizeValue, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Card(
            color: SColors.appPrimaryWhite,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
        ),
       SizedBox( width: MediaQuery.of(context).size.width * 0.08,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: TextStyle(
              color: SColors.textColorBlack,
              fontFamily: 'FontSen',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(textTwo, style: TextStyle(
              color: SColors.textColorBlack,
              fontFamily: 'FontSen',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Text(sizeValue,
                  style: TextStyle(
                    color: SColors.textColorBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.11,),
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.16,
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
                                icon: Icon(Icons.remove, color: Colors.white,size: 19),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                        Text("1", style: TextStyle(color: Colors.white, fontSize: 21)),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.01,),
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: ColoredBox(
                              color: SColors.textGrey,
                              child: IconButton(
                                onPressed: () {},
                                icon: Center(child: Icon(Icons.add, color: Colors.white,size: 19,)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
