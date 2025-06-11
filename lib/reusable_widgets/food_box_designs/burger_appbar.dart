import 'package:flutter/material.dart';
import 'package:food_delivery_app/reusable_widgets/small_widgets_before_home_screen/rounded_rectangular_button.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';

class BurgerAppbar extends StatelessWidget {
  final String imageOne;
  final String textOne;
 // final IconData dropDownIcon;
  final IconData iconOne;
  final IconData iconTwo;
  final VoidCallback onPressed;

  const BurgerAppbar({
    super.key,
    required this.imageOne,
    required this.textOne,
    required this.iconOne,
    required this.iconTwo, required this.onPressed,
    //required this.dropDownIcon,

  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: MediaQuery.of(context).size.width * 0.99,
      child: ListTile(
        leading: InkWell(
            onTap: onPressed,
            child: Image.asset(imageOne)),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedRectangleButton(text: textOne,icon: Icons.arrow_drop_down, textColor: Colors.black, borderColor: Colors.grey, onPressed: (){}),

            Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(iconOne, size: 28, color: SColors.appPrimaryWhite),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Color(0XFFECF0F4)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(iconTwo, size: 28, color: SColors.textColorBlack),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
