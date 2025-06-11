import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';
class AddNewBoxdesign extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  const AddNewBoxdesign({super.key, required this.icon, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.90,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: SColors.appPrimaryWhite,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: SColors.inputBoxColorLightGreen,
            width: 3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onPressed,
                  child: Icon(icon, color:SColors.nextButtonOrange,size: 32,)
              ), // You can change the icon
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: SColors.nextButtonOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
