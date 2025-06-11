import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';
class RectangleCard extends StatelessWidget{
final String image;
final double height;
final double width;
const RectangleCard({super.key,required this.image, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.35,
      width: MediaQuery.of(context).size.width*0.4,
      child: Card(
        color: SColors.appPrimaryWhite,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset(image,height: height,width: width,),
      ),
    );
  }
}