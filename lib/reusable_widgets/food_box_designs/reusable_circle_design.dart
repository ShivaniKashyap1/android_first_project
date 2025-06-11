import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
class CircleDesign extends StatelessWidget {
  final String? image;
  final String? text;
  const CircleDesign({super.key,  this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: (text!=null)?ClipRRect(
        borderRadius: BorderRadius.circular(52),
        child: DecoratedBox(
          decoration: BoxDecoration(color: SColors.circleColor),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(text!),
          ),
        ),
      )
          :(image!=null)?Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: DecoratedBox(
            decoration: BoxDecoration(color: SColors.circleColor),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child:Image.asset(image!,height: 40,width: 40,),
            ),
                    ),
                  ),
          )
    :SizedBox(),
    );
  }
}
