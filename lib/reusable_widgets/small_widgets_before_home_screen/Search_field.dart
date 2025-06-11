import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
class SearchField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final VoidCallback onPressed;
  const SearchField({super.key, required this.hintText, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.99,
      child: Card(
        color: Color(0xFFF6F6F6),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
          child: Center(
            child: ListTile(
              leading: InkWell(
                  onTap: onPressed,
                  child: Icon(icon,size: 42,color: SColors.brownBackgroundColor,)),
              title: Text(hintText, style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w400,
                color: SColors.textColorBlack,
                fontSize: 18,
              ),),
            ),
          ),
      ),
    );
  }



}
