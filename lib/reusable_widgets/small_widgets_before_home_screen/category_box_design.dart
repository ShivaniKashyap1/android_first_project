import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';
class CategoryBox extends StatelessWidget{
  final String text;
  final Color color;
  final String image;
  final VoidCallback onPressed;
  const CategoryBox({super.key, required this.text, required this.color, required this.onPressed, required this.image,
  });
  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height:MediaQuery.of(context).size.height * 0.06,
     width:MediaQuery.of(context).size.width * 0.21,
     child: ClipRRect(
       borderRadius: BorderRadius.circular(30),
       child: DecoratedBox(
         decoration: BoxDecoration(
           color: color,
         ),
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
           child: Row(
             children: [
               InkWell(
                 onTap: onPressed,
                 child: CircleAvatar(
                   radius: 40,
                   backgroundImage: AssetImage(image),
                 //  backgroundColor: SColors.brownBackgroundColor,
                 ),
               ),
               Text(text,style: TextStyle(
                 fontFamily: 'FontSen',
                 fontWeight: FontWeight.w600,
                 color: SColors.textColorBlack,
                 fontSize: 14,
               ),),
             ],
           ),
         ),

       ),
     ),
   );
  }

}