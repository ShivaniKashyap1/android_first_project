import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';

class RectangleButton extends StatelessWidget {
  final Color color;
  final String name;
  final VoidCallback onPressed;
  final IconData? icon;
  final bool? isLoading;
  final double height;
  final double width;
  final Color textColor;

  const RectangleButton({
    super.key,
    required this.color,
    required this.name,
    required this.onPressed,
    this.icon,
    this.isLoading, required this.height, required this.width, required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.07,
      // width: MediaQuery.of(context).size.width * 0.90,
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: color,
        ),
        child:
        isLoading == true ? CircularProgressIndicator() : icon != null
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w400,
                        color: textColor,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Icon(icon, size: 32, color: Colors.white),
                  ],
                )
                : Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'FontSen',
                    fontWeight: FontWeight.w400,
                    color:textColor,
                    fontSize: 18,
                  ),
                ),
      ),
    );
  }
}
